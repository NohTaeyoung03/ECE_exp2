`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 22:26:41
// Design Name: 
// Module Name: traffic_light
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module traffic_light(clk, rst, S_W_GREEN, N_W_GREEN, W_W_GREEN, E_W_GREEN, S_W_RED, N_W_RED, W_W_RED, E_W_RED, // basic traffic light
                     S_GREEN, N_GREEN, W_GREEN, E_GREEN, S_YELLOW, N_YELLOW, W_YELLOW, E_YELLOW, 
                     S_RED, N_RED, W_RED, E_RED, S_LEFT, N_LEFT, W_LEFT, E_LEFT,
                     LCD_E, LCD_RS, LCD_RW, LCD_DATA, // LCD
                     speed_sel, add_time, // time
                     btn_A); // emergency

input clk, rst;
input[3:0] speed_sel;
input add_time;
input btn_A;
reg[8:0] speed;
reg[4:0] time_h;
reg[5:0] time_m;
reg[5:0] time_s;
reg[2:0] state_cnt;
reg[2:0] state_cnt_prev;
reg[3:0] state;
reg[4:0] time_h_reg;
reg[8:0] speed_reg;

output reg S_W_GREEN, N_W_GREEN, W_W_GREEN, E_W_GREEN, S_W_RED, N_W_RED, W_W_RED, E_W_RED, 
           S_GREEN, N_GREEN, W_GREEN, E_GREEN, S_YELLOW, N_YELLOW, W_YELLOW, E_YELLOW,
           S_RED, N_RED, W_RED, E_RED, S_LEFT, N_LEFT, W_LEFT, E_LEFT;
reg is_S_YELLOW, is_N_YELLOW, is_W_YELLOW, is_E_YELLOW; 
reg state_YELLOW;

output LCD_E, LCD_RS, LCD_RW;
output[7:0] LCD_DATA;
wire[3:0] speed_sel_t; 
wire add_time_t;
wire btn_A_t;

parameter A = 4'b0001,
          B = 4'b0010,
          C = 4'b0011,
          D = 4'b0100,
          E = 4'b0101,
          F = 4'b0110,
          G = 4'b0111,
          H = 4'b1000;
parameter x1   = 1,
          x10  = 10,
          x100 = 100,
          x200 = 200;    
integer cnt;
integer cnt_t;
integer cnt_A;

LCD L1(rst, clk, LCD_E, LCD_RS, LCD_RW, LCD_DATA, time_s, time_m, time_h, state);
oneshot_universal #(.WIDTH(4)) O1(clk, rst, {speed_sel[3:0]}, {speed_sel_t[3:0]});
oneshot_universal #(.WIDTH(1)) O2(clk, rst, {add_time}, {add_time_t});
oneshot_universal #(.WIDTH(1)) O3(clk, rst, {btn_A}, {btn_A_t});

always @(posedge clk or negedge rst) begin // time speed
    if(!rst) begin
        speed <= x1;
        speed_reg <= x1;
    end
    else begin
        speed_reg <= speed;
        case(speed_sel_t)
            4'b1000 : speed <= x1;
            4'b0100 : speed <= x10;
            4'b0010 : speed <= x100;
            4'b0001 : speed <= x200;
        endcase
    end
end

always @(posedge clk or negedge rst) begin // time
    if(!rst) begin
        time_h <= 8;
        time_m <= 0;
        time_s <= 0;
        cnt_t <= 0;
        time_h_reg <= 8;
    end
    else begin
        time_h_reg <= time_h;
        if(add_time_t == 1) 
                time_h <= time_h + 1;
        if(time_h >= 24)
            time_h <= 0;        
        if(cnt_t >= 1000/speed) begin
            time_s <= time_s + 1;
            cnt_t <= 0;
            if(time_s == 59) begin 
                time_s <= 0; 
                time_m <= time_m + 1; 
                if(time_m == 59) begin
                    time_m <= 0;
                    time_h <= time_h + 1;
                    if(time_h == 23)
                        time_h <= 0;
                end
           end
        end
        else begin 
            if(speed_sel_t) begin
                if(speed_reg < speed) cnt_t <= cnt_t/speed;
                else cnt_t <= cnt_t*speed_reg;
            end
            cnt_t <= cnt_t + 1;
        end
    end
end

always @(posedge clk or negedge rst) begin // state shift
    if(!rst) begin
        state <= A;
        cnt <= 0;
        state_cnt <= 3'b000;
        state_cnt_prev <= A;
        cnt_A <= -1;
    end
    else if(speed_sel_t) begin
        if(speed_reg < speed) cnt <= cnt/speed;
        else cnt <= cnt*speed_reg;
    end
    else if(cnt_A != -1) begin
        if(cnt_A >= 16000/speed) begin cnt <= 0; state_cnt <= state_cnt_prev; cnt_A <= -1; end
        else if(cnt_A == 1000/speed) begin state <= A; cnt <= 0; state_cnt_prev <= state_cnt; cnt_A <= cnt_A + 1; end
        else begin cnt_A <= cnt_A + 1; cnt <= cnt + 1; end
    end
    else if(btn_A_t == 1) // state shift : emergency(A)
        cnt_A <= 0;
    else if(cnt_A == -1) begin // state shift : A~H
        if(time_h < 23 && time_h >= 8) begin
            if(time_h_reg == 7 && time_h == 8) begin
                cnt <= cnt < 5000 ? cnt : cnt - 5000; 
                state_cnt <= state_cnt < 3 ? 
                    (time_s%10 < 5 ? state_cnt*2 : state_cnt*2 + 1) : 
                    (time_s%10 < 5 ? (state_cnt-3)*2 : (state_cnt-3)*2 + 1);
            end
            else begin
                case(state_cnt)
                    3'b000 : begin
                        state <= A;
                        if(cnt >= 5000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b001 : begin
                        state <= D;
                        if(cnt >= 5000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b010 : begin
                        state <= F;
                        if(cnt >= 5000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b011 : begin
                        state <= E;
                        if(cnt >= 5000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b100 : begin
                        state <= G;
                        if(cnt >= 5000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b101 : begin
                        state <= E;
                        if(cnt >= 5000/speed) begin cnt <= 0; state_cnt <= 0; end
                        else cnt <= cnt + 1;
                    end
                endcase
            end
        end
        else begin
            if(time_h_reg == 22 && time_h == 23) begin
                cnt <= time_s%10 < 5 ? cnt : cnt + 5000; 
                state_cnt <= time_s < 30 ? state_cnt/2 : state_cnt/2 + 3;
            end
            else begin
                case(state_cnt)
                    3'b000 : begin
                        state <= B;
                        if(cnt >= 10000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b001 : begin
                        state <= A;
                        if(cnt >= 10000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b010 : begin
                        state <= C;
                        if(cnt >= 10000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b011 : begin
                        state <= A;
                        if(cnt >= 10000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b100 : begin
                        state <= E;
                        if(cnt >= 10000/speed) begin cnt <= 0; state_cnt <= state_cnt + 1; end
                        else cnt <= cnt + 1;
                    end
                    3'b101 : begin
                        state <= H;
                        if(cnt >= 10000/speed) begin cnt <= 0; state_cnt <= 0; end
                        else cnt <= cnt + 1;
                    end
                endcase
            end
        end
    end
end
        
always @(posedge clk or negedge rst) begin // state
    if(!rst) begin
        state_YELLOW <= 0;
        {S_W_GREEN, S_W_RED} <= 2'b01;
        {N_W_GREEN, N_W_RED} <= 2'b01;
        {W_W_GREEN, W_W_RED} <= 2'b10;
        {E_W_GREEN, E_W_RED} <= 2'b10;
        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b1000;
        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b1000;
        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
    end
    else begin
        if(state_YELLOW == 0) begin // state : yellow
            {S_YELLOW, N_YELLOW, W_YELLOW, E_YELLOW} = 4'b0000;
            is_S_YELLOW <= S_GREEN || S_LEFT;
            is_N_YELLOW <= N_GREEN || N_LEFT;
            is_W_YELLOW <= W_GREEN || W_LEFT;
            is_E_YELLOW <= E_GREEN || E_LEFT;
        end
        else begin
            if(is_S_YELLOW) begin S_GREEN <= 0; S_LEFT <= 0; S_YELLOW <= 1; end
            if(is_N_YELLOW) begin N_GREEN <= 0; N_LEFT <= 0; N_YELLOW <= 1; end
            if(is_W_YELLOW) begin W_GREEN <= 0; W_LEFT <= 0; W_YELLOW <= 1; end
            if(is_E_YELLOW) begin E_GREEN <= 0; E_LEFT <= 0; E_YELLOW <= 1; end
        end
        if(8 <= time_h && time_h < 23) begin // day
            case(state) 
                A : begin
                    if(is_W_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            {is_S_YELLOW, is_N_YELLOW} <= 2'b00;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt_A == -1 ? cnt < 2500/speed : cnt < 7500/speed) begin 
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b10;
                        {E_W_GREEN, E_W_RED} <= 2'b10;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b1000;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b1000;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
                    end
                    else if(cnt % (500/speed) == 0) begin
                        W_W_GREEN <= ~W_W_GREEN;
                        E_W_GREEN <= ~E_W_GREEN;
                    end
                end
                B : begin
                    if(is_S_YELLOW || is_W_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            is_N_YELLOW <= 0;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 2500/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b10;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0010;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b1001;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
                    end
                    else if(cnt % (500/speed) == 0)
                        E_W_GREEN <= ~E_W_GREEN;
                end
                C : begin
                    if(is_N_YELLOW || is_W_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            is_S_YELLOW <= 0;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 2500/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b10;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b1001;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0010;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
                    end
                    else if(cnt % (500/speed) == 0)
                        W_W_GREEN <= ~W_W_GREEN;
                end
                D : begin
                    if(is_W_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            {is_S_YELLOW, is_N_YELLOW} <= 2'b00;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 2500/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0001;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0001;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
                    end
                end
                E : begin
                    if(is_S_YELLOW || is_N_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            {is_W_YELLOW, is_E_YELLOW} <= 2'b00;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 2500/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b10;
                        {N_W_GREEN, N_W_RED} <= 2'b10;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0010;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0010;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b1000;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b1000;
                    end
                    else if(cnt % (500/speed) == 0) begin
                        S_W_GREEN <= ~S_W_GREEN;
                        N_W_GREEN <= ~N_W_GREEN;
                    end
                end
                F : begin
                    if(is_S_YELLOW || is_N_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            is_W_YELLOW <= 0;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 2500/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b10;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_RED, S_LEFT} <= 4'b010;
                        {N_GREEN, N_RED, N_LEFT} <= 4'b010;
                        {W_GREEN, W_RED, W_LEFT} <= 4'b101;
                        {E_GREEN, E_RED, E_LEFT} <= 4'b010;
                    end
                    else if(cnt % (500/speed) == 0)
                        N_W_GREEN <= ~N_W_GREEN;
                end
                G : begin
                    if(is_S_YELLOW || is_N_YELLOW || is_W_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            is_E_YELLOW <= 0;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 2500/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b10;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0010;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0010;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b1001;
                    end
                    else if(cnt % (500/speed) == 0)
                        S_W_GREEN <= ~S_W_GREEN;
                end
                H : begin
                    if(is_S_YELLOW || is_N_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            {is_W_YELLOW, is_E_YELLOW} <= 2'b00;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 2500/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0010;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0010;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0001;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0001;
                    end
                end
            endcase
        end
        else begin // night
            case(state) 
                A : begin
                    if(is_W_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            {is_S_YELLOW, is_N_YELLOW} <= 2'b00;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt_A == -1 ? cnt < 5000/speed : cnt < 7500/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b10;
                        {E_W_GREEN, E_W_RED} <= 2'b10;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b1000;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b1000;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
                    end
                    else if(cnt % (500/speed) == 0) begin
                        W_W_GREEN <= ~W_W_GREEN;
                        E_W_GREEN <= ~E_W_GREEN;
                    end
                end
                B : begin
                    if(is_S_YELLOW || is_W_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            is_N_YELLOW <= 0;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 5000/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b10;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0010;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b1001;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
                    end
                    else if(cnt % (500/speed) == 0)
                        E_W_GREEN <= ~E_W_GREEN;
                end
                C : begin
                    if(is_N_YELLOW || is_W_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            is_S_YELLOW <= 0;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 5000/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b10;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b1001;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0010;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
                    end
                    else if(cnt % (500/speed) == 0)
                        W_W_GREEN <= ~W_W_GREEN;
                end
                D : begin
                    if(is_W_YELLOW || is_E_YELLOW) begin
                        if(cnt < 5000/speed) begin 
                            state_YELLOW <= 1;
                            {is_S_YELLOW, is_N_YELLOW} <= 2'b00;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 5000/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0001;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0001;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0010;
                    end
                end
                E : begin
                    if(is_S_YELLOW || is_N_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            {is_W_YELLOW, is_E_YELLOW} <= 2'b00;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 5000/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b10;
                        {N_W_GREEN, N_W_RED} <= 2'b10;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0010;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0010;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b1000;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b1000;
                    end
                    else if(cnt % (500/speed) == 0) begin
                        S_W_GREEN <= ~S_W_GREEN;
                        N_W_GREEN <= ~N_W_GREEN;
                    end
                end
                F : begin
                    if(is_S_YELLOW || is_N_YELLOW || is_E_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            is_W_YELLOW <= 0;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 5000/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b10;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_RED, S_LEFT} <= 4'b010;
                        {N_GREEN, N_RED, N_LEFT} <= 4'b010;
                        {W_GREEN, W_RED, W_LEFT} <= 4'b101;
                        {E_GREEN, E_RED, E_LEFT} <= 4'b010;
                    end
                    else if(cnt % (500/speed) == 0)
                        N_W_GREEN <= ~N_W_GREEN;
                end
                G : begin
                    if(is_S_YELLOW || is_N_YELLOW || is_W_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            is_E_YELLOW <= 0;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 5000/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b10;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0010;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0010;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0010;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b1001;
                    end
                    else if(cnt % (500/speed) == 0)
                        S_W_GREEN <= ~S_W_GREEN;
                end
                H : begin
                    if(is_S_YELLOW || is_N_YELLOW) begin
                        if(cnt < 500/speed) begin 
                            state_YELLOW <= 1;
                            {is_W_YELLOW, is_E_YELLOW} <= 2'b00;
                        end
                        else state_YELLOW <= 0;
                    end
                    else if(cnt < 5000/speed) begin
                        {S_W_GREEN, S_W_RED} <= 2'b01;
                        {N_W_GREEN, N_W_RED} <= 2'b01;
                        {W_W_GREEN, W_W_RED} <= 2'b01;
                        {E_W_GREEN, E_W_RED} <= 2'b01;
                        {S_GREEN, S_YELLOW, S_RED, S_LEFT} <= 4'b0010;
                        {N_GREEN, N_YELLOW, N_RED, N_LEFT} <= 4'b0010;
                        {W_GREEN, W_YELLOW, W_RED, W_LEFT} <= 4'b0001;
                        {E_GREEN, E_YELLOW, E_RED, E_LEFT} <= 4'b0001;
                    end
                end
            endcase
        end
    end
end

endmodule
