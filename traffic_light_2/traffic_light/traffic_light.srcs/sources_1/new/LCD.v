`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 11:07:24
// Design Name: 
// Module Name: LCD
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


module LCD(rst, clk, LCD_E, LCD_RS, LCD_RW, LCD_DATA, time_s, time_m, time_h, state);

input rst, clk;
input[4:0] time_h;
input[5:0] time_m;
input[5:0] time_s;
input[3:0] state;
reg[5:0] time_s_reg;
wire[11:0] bcd_h;
wire[11:0] bcd_m;
wire[11:0] bcd_s;

output LCD_E, LCD_RS, LCD_RW;
output reg[7:0] LCD_DATA; 

wire LCD_E;
reg LCD_RS, LCD_RW;

reg[2:0] state_LCD;
parameter DELAY        = 3'b000,
          FUNCTION_SET = 3'b001,
          ENTRY_MODE   = 3'b010,
          DISP_ONOFF   = 3'b011,
          LINE1        = 3'b100,
          LINE2        = 3'b101,
          DELAY_T      = 3'b110, 
          CLEAR_DISP   = 3'b111;
integer cnt_LCD;

bin2bcd b1(clk, rst, {3'b0, time_h}, bcd_h);
bin2bcd b2(clk, rst, {3'b00, time_m}, bcd_m);
bin2bcd b3(clk, rst, {3'b00, time_s}, bcd_s);

always @(posedge clk or negedge rst) begin
    if(!rst) time_s_reg <= 0;
    else
        time_s_reg <= time_s;
end

always @(posedge clk or negedge rst) begin
    if(!rst) state_LCD <= DELAY;
    else begin
        case(state_LCD)
            DELAY : begin
                if(cnt_LCD == 5) state_LCD <= FUNCTION_SET;
            end
            FUNCTION_SET : begin
                if(cnt_LCD == 5) state_LCD <= DISP_ONOFF;
            end
            DISP_ONOFF : begin
                if(cnt_LCD == 5) state_LCD <= ENTRY_MODE;
            end
            ENTRY_MODE : begin
                if(cnt_LCD == 5) state_LCD <= LINE1;
            end
            LINE1 : begin
                if(cnt_LCD == 20) state_LCD <= LINE2;
            end
            LINE2 : begin
                if(cnt_LCD == 20) state_LCD <= DELAY_T;
            end
            DELAY_T : begin
                if(time_s_reg != time_s) state_LCD <= CLEAR_DISP;
            end
            CLEAR_DISP : begin
                if(cnt_LCD == 5) state_LCD <= LINE1;
            end
            default : state_LCD <= DELAY;
        endcase
    end
end

always @(posedge clk or negedge rst) begin
    if(!rst) cnt_LCD <= 0;
    else begin
        case(state_LCD)
            DELAY : 
                if(cnt_LCD >= 5) cnt_LCD <= 0;
                else cnt_LCD <= cnt_LCD + 1;
            FUNCTION_SET : 
               if(cnt_LCD >= 5) cnt_LCD <= 0;
                else cnt_LCD <= cnt_LCD + 1;
            DISP_ONOFF : 
                if(cnt_LCD >= 5) cnt_LCD <= 0;
                else cnt_LCD <= cnt_LCD + 1;
            ENTRY_MODE : 
                if(cnt_LCD >= 5) cnt_LCD <= 0;
                else cnt_LCD <= cnt_LCD + 1;
            LINE1 : 
                if(cnt_LCD >= 20) cnt_LCD <= 0;
                else cnt_LCD <= cnt_LCD + 1;
            LINE2 : 
                if(cnt_LCD >= 20) cnt_LCD <= 0;
                else cnt_LCD <= cnt_LCD + 1;
            DELAY_T : 
               cnt_LCD <= 0;
            CLEAR_DISP :
                if(cnt_LCD >= 5) cnt_LCD <= 0;
                else cnt_LCD <= cnt_LCD + 1;
            default : state_LCD <= DELAY;
        endcase
    end
end

always @(posedge clk or negedge rst) begin
    if(!rst)
        {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_00000001;
    else begin
        case(state_LCD)
            FUNCTION_SET : 
                {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_0011_1000;
            DISP_ONOFF :
                {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_0000_1100;
            ENTRY_MODE :
                {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_0000_0110;
            LINE1 : begin
                case(cnt_LCD)
                    00 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_1000_0000;
                    01 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0101_0100; // T
                    02 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_1001; // i
                    03 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_1101; // m
                    04 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_0101; // e
                    05 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_0000; // 
                    06 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0011_1010; // :
                    07 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_0000; // 
                    08 : {LCD_RS, LCD_RW, LCD_DATA} <= {1'b1, 1'b0, 4'b0011, bcd_h[7:4]}; // 1
                    09 : {LCD_RS, LCD_RW, LCD_DATA} <= {1'b1, 1'b0, 4'b0011, bcd_h[3:0]}; // 1
                    10 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0011_1010; // :
                    11 : {LCD_RS, LCD_RW, LCD_DATA} <= {1'b1, 1'b0, 4'b0011, bcd_m[7:4]}; // 4
                    12 : {LCD_RS, LCD_RW, LCD_DATA} <= {1'b1, 1'b0, 4'b0011, bcd_m[3:0]}; // 8
                    13 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0011_1010; // :
                    14 : {LCD_RS, LCD_RW, LCD_DATA} <= {1'b1, 1'b0, 4'b0011, bcd_s[7:4]}; // 3
                    15 : {LCD_RS, LCD_RW, LCD_DATA} <= {1'b1, 1'b0, 4'b0011, bcd_s[3:0]}; // 2
                    default : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_0000_1100; //
                endcase
            end
            LINE2 : begin
                if(8 <= time_h && time_h < 23) begin // day
                    case(cnt_LCD)
                        00 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_1100_0000;
                        01 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0101_0011; // S
                        02 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0111_0100; // t
                        03 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_0001; // a
                        04 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0111_0100; // t
                        05 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_0101; // e
                        06 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_0000; //  
                        07 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0011_1010; // :
                        08 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_0000; //  
                        09 : {LCD_RS, LCD_RW, LCD_DATA} <= {1'b1, 1'b0, 4'b0100, state[3:0]}; // state
                        10 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_1000; // (
                        11 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_0100; // d
                        12 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_0001; // a
                        13 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0111_1001; // y
                        14 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_1001; // )
                        default : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_0000_1100; //
                    endcase
                end
                else begin // night
                    case(cnt_LCD)
                        00 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_1100_0000;
                        01 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0101_0011; // S
                        02 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0111_0100; // t
                        03 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_0001; // a
                        04 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0111_0100; // t
                        05 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_0101; // e
                        06 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_0000; //  
                        07 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0011_1010; // :
                        08 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_0000; //  
                        09 : {LCD_RS, LCD_RW, LCD_DATA} <= {1'b1, 1'b0, 4'b0100, state[3:0]}; // state
                        10 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_1000; // (
                        11 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_1110; // n
                        12 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_1001; // i
                        13 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_0111; // g
                        14 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0110_1000; // h
                        15 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0111_0100; // t
                        16 : {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_0_0010_1001; // )
                        default : {LCD_RS, LCD_RW, LCD_DATA} = 10'b0_0_0000_1100; //
                    endcase
                end
            end
            DELAY_T : 
                {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_0000_0010;
            CLEAR_DISP : 
                {LCD_RS, LCD_RW, LCD_DATA} <= 10'b0_0_0000_0001;
            default : 
                {LCD_RS, LCD_RW, LCD_DATA} <= 10'b1_1_0000_0000;
        endcase
    end
end

assign LCD_E = clk;
        
endmodule
