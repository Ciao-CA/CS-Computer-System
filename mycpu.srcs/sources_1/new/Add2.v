`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 09:34:28
// Design Name: 
// Module Name: Add2
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


module Add2(
in_data1,in_data2,out_data,
    );
    input [31:0]in_data1,in_data2;
    output [31:0]out_data;
    assign out_data=in_data1+in_data2;
endmodule
