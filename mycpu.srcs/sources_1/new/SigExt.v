`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 13:37:03
// Design Name: 
// Module Name: SigExt
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



module SigExt(order,addr);
     input [15:0] order;
     output reg [31:0] addr;
     always @(*)
     begin
       if(order[15]==1) addr[31:16]=16'b1111111111111111;
       else addr[31:16]=16'b0000000000000000;
       addr[15:0]=order[15:0];
     end
endmodule

