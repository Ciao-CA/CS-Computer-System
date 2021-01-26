`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 09:08:26
// Design Name: 
// Module Name: SHL2
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


module SHL2(
in_data,out_data
    );
    input [25:0]in_data;
    output reg[27:0]out_data;
    always@(*)begin
        out_data[27:2]<=in_data;
        out_data[1:0]<=2'b00;
    end
endmodule
