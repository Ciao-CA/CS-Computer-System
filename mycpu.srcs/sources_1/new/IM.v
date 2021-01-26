`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 10:23:21
// Design Name: 
// Module Name: IM
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


module IM(
addr,Inst,
    );
    input [31:0]addr;
    output [31:0]Inst;
    reg [31:0]Im[31:0];
    integer i=0;
    initial begin
    for(i=0;i<32;i=i+1)
    Im[i]=32'h2003000c;
        Im[0]=32'h00210822;
        Im[1]=32'h2003000c;
        Im[2]=32'h2067fff7;
        Im[3]=32'h00e22025;
        Im[4]=32'h00642824;
        Im[5]=32'h00a42820;
        Im[6]=32'h10a7000a;
        Im[7]=32'h0064202a;
        Im[8]=32'h10800001;
        Im[9]=32'h20050000;
        Im[10]=32'h00e2202a;
        Im[11]=32'h00853820;
        Im[12]=32'h00e23822;
        Im[13]=32'hac670044;
        Im[14]=32'h8c020050;
        Im[15]=32'h08000011;
        Im[16]=32'h20020001;
        Im[17]=32'hac020054;
    end
    assign Inst=Im[addr[6:2]];
endmodule
