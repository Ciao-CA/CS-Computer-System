`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 09:13:14
// Design Name: 
// Module Name: ts
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


module ts(
    );
    reg clk,rst;
    wire [31:0]r1,r2,b,c,Inst;
    CPU cpu(clk,rst,Inst,r1,r2,b,c);
    always #20 clk=~clk;
    initial begin
        clk=0;
        rst=1;
        #100
        rst=~rst;
    end
endmodule
