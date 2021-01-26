`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 09:37:39
// Design Name: 
// Module Name: PC
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


module PC(
clk,D,Q,rst
    );
    input rst;
    input clk;
    input [31:0]D;
    output reg[31:0]Q;
    always@(posedge clk,rst)begin
    if(!rst)
        Q<=D;
    else Q<=32'b0;
    end
endmodule
