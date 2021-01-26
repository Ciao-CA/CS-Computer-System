`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 12:30:02
// Design Name: 
// Module Name: DM
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



module DM(Addr,Din,We,Dout,Re,clk);
    input[31:0]Addr,Din;
    input We,Re,clk;
    output[31:0]Dout;
    reg[31:0]Ram[31:0];
    
    integer i=0;
    initial begin
    for(i=0;i<32;i=i+1)
        Ram[i]<=32'b0;
    Ram[0]=20;
    Ram[1]=10;
    Ram[2]=30;
    Ram[3]=5;
    end
    always@(posedge clk)begin
        if(We)Ram[Addr]<=Din;
    end
    assign Dout=Ram[Addr];
endmodule
