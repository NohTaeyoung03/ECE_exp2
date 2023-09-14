`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 13:20:39
// Design Name: 
// Module Name: week3_encoder
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


module week3_encoder(D,x,y,V);
input[0:3] D;
output reg x,y,V;

always @(D) begin
    if(D[3]==1) {x,y,V}=3'b111; 
    else if(D[2]==1) {x,y,V}=3'b101;
    else if(D[1]==1) {x,y,V}=3'b011; 
    else if(D[0]==1) {x,y,V}=3'b001; 
    else {x,y,V}=3'bXX0;
end
endmodule
