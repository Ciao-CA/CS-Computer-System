`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 15:09:37
// Design Name: 
// Module Name: SSHL32
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


module SSHL32(
se,sh2
    );
    input [31:0]se;
    output reg[31:0]sh2;
    always@(*)begin
        sh2[31:2]<=se[29:0];
        sh2[1:0]<=2'b00;
    end
endmodule
