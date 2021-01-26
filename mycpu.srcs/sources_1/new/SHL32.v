`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 13:58:15
// Design Name: 
// Module Name: SHL32
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


module SHL32(
data1,data2,out
    );
    input [3:0]data2;
    input [27:0]data1;
    output reg[31:0]out;
    always@(*)begin
        out[31:28]<=data2;
        out[27:0]<=data1;
    end
endmodule
