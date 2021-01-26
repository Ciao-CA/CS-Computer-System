`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 10:52:00
// Design Name: 
// Module Name: RF
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


module RF(
W_data,Reg1,Reg2,W_Reg,data1,data2,w,clk
    );
    input clk;
    input [4:0]Reg1,Reg2,W_Reg;
    input w;//¶ÁÐ´¿ØÖÆ,1Ð´0¶Á
    input [31:0]W_data;
    output [31:0]data1,data2;
    reg [31:0]ram[31:0];//¼Ä´æÆ÷×é
    integer i=0;
    initial begin
        for(i=0;i<32;i=i+1)
        ram[i]=32'b0;
        ram[0]=10;
        ram[1]=20;
        ram[2]=30;
    end
    assign data1=ram[Reg1];
    assign data2=ram[Reg2];
    always@(posedge clk)begin
        if(w)ram[W_Reg]<=W_data;
    end
endmodule
