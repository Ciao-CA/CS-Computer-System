`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 14:07:53
// Design Name: 
// Module Name: CPU
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


module CPU(
clk,rst,Inst,r1,r2,b,c
    );
    input clk,rst;
    output [31:0]r1,r2,b,c;
    wire [31:0]R_data1,R_data2,Addr;
    output [31:0]Inst;
    wire [1:0]ALUop;
    wire RegDst,Jump,Branch,MemtoReg,ALUSrc,RegWrite,MemWrite,MemRead;
    wire [4:0]w_reg;
    wire [31:0]A1,A2;
    wire [31:0]s2,s4,pcd,se,m1,sh2,m2,ac,Rd,Wd;
    wire[2:0]aluc;
    wire az,adn;
    
    PC pc(clk,pcd,Addr,rst);
    IM im(Addr,Inst);
    MCU mcu(Inst[31:26],RegDst,Jump,Branch,MemRead,MemtoReg,ALUop,MemWrite,ALUSrc,RegWrite);
    MUX4 mux4(Inst[20:16],Inst[15:11],RegDst,w_reg);
    Add1 add1(Addr,A1);
    SHL2 shl2(Inst[25:0],s2);
    SHL32 shl32(s2,A1[31:28],s4);
    MUX32 mux32(s4,m2,Jump,pcd);
    Add2 add2(A1,sh2,A2);
    MUX32 mux321(A1,A2,adn,m2);
    MUX32 mux331(ac,Rd,MemtoReg,Wd);
    myand myand1(Branch,az,adn);
    RF r(Wd,Inst[25:21],Inst[20:16],w_reg,R_data1,R_data2,RegWrite,clk);
    SigExt sigext(Inst[15:0],se);
    SSHL32 shl21(se,sh2);
    MUX32 mux123(R_data2,se,ALUSrc,m1);
    ALU alu1(R_data1,m1,ac,aluc,az);
    ALUCU alucu1(Inst[5:0],ALUop,aluc);
    DM dm1(ac,R_data2,MemWrite,Rd,MemRead,clk);
    assign r1=R_data1;
    assign r2=R_data2;
    assign b=m1;
    assign c=ac;
endmodule
