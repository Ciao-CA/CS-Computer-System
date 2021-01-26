`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 09:19:23
// Design Name: 
// Module Name: MUX32
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


module MUX32(
in_data1,in_data2,src,out_data,
    );
    input [31:0]in_data1,in_data2;
    input src;
    output [31:0]out_data;
    assign out_data=(src==0)?in_data1:in_data2;
endmodule
