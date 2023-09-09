`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/10 02:23:39
// Design Name: 
// Module Name: tb_week2_full
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


module tb_week2_full();
reg a,b,ci;
wire c,s;
week2_full u1(.a(a), .b(b), .ci(ci), .c(c), .s(s));

initial begin 
    a=1'b0; b=1'b0; ci=1'b0; #1;
    a=1'b0; b=1'b0; ci=1'b1; #1;
    a=1'b0; b=1'b1; ci=1'b0; #1;
    a=1'b0; b=1'b1; ci=1'b1; #1;
    a=1'b1; b=1'b0; ci=1'b0; #1;
    a=1'b1; b=1'b0; ci=1'b1; #1;
    a=1'b1; b=1'b1; ci=1'b0; #1;
    a=1'b1; b=1'b1; ci=1'b1;
end

endmodule
