`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 10:35:08
// Design Name: 
// Module Name: tb_week3_decoder
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


module tb_week3_decoder();
reg x,y,z;
wire[7:0] D;
week3_decoder u(.x(x), .y(y), .z(z), .D(D));

initial begin
    {x,y,z}=3'b000; #10
    {x,y,z}=3'b001;#10
    {x,y,z}=3'b010;#10
    {x,y,z}=3'b011;#10
    {x,y,z}=3'b100;#10
    {x,y,z}=3'b101;#10
    {x,y,z}=3'b110;#10
    {x,y,z}=3'b111;
end
endmodule
