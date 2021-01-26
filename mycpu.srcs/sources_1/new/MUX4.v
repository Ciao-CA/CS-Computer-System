`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 09:27:02
// Design Name: 
// Module Name: MUX4
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


module MUX4(
in_data1,in_data2,RegDst,w_Reg
    );
    input [4:0]in_data1,in_data2;
    input RegDst;
    output [4:0]w_Reg;
    assign w_Reg=(RegDst==0)?in_data1:in_data2;
endmodule
