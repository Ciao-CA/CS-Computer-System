`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 14:01:02
// Design Name: 
// Module Name: MCU
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


module MCU(op,RegDst,jump,Branch,MemRead,
 MemtoReg,ALUop,MemWrite,ALUSrc,RegWrite);
     input [5:0] op;
     output reg RegDst,jump,Branch,MemtoReg,ALUSrc,RegWrite,MemWrite,MemRead;
     output reg [1:0] ALUop;
     always@(*)
     begin
      case(op)
      //R型指令
      6'b000000:begin 
      RegDst <= 1; jump <= 0; ALUop <= 2'b10;
      Branch <= 0; MemtoReg <= 0; RegWrite <= 1;
      MemWrite <= 0; MemRead <= 0; ALUSrc <= 0;end
      //I型lw存指令
      6'b100011:begin
      RegDst <= 0; jump <= 0; ALUop <= 2'b00;
      Branch <= 0; MemtoReg <= 1; RegWrite <= 1;
      MemWrite <= 0; MemRead <= 1; ALUSrc <= 1;end
      //I型sw取指令
      6'b101011:begin
      RegDst <= 0; jump <= 0; ALUop <= 2'b00;
      Branch <= 0; MemtoReg <= 0; RegWrite <= 0;
      MemWrite <= 1; MemRead <= 0; ALUSrc <= 1;end
      //I型beq指令分支反指令
      6'b000100:begin
      RegDst <= 0; jump <= 0; ALUop <= 2'b01;
      Branch <= 1; MemtoReg <= 0; RegWrite <= 0;
      MemWrite <= 0; MemRead <= 0; ALUSrc <= 0;end
      //J型指令
      6'b000010:begin
      RegDst <= 0; jump <= 1; ALUop <= 0;
      Branch <= 0; MemtoReg <= 0; RegWrite <= 0;
      MemWrite <= 0; MemRead <= 0; ALUSrc <= 0;end
      default:begin
      RegDst <= 0; jump <= 0; ALUop <= 0;
      Branch <= 0; MemtoReg <= 0; RegWrite <= 0;
      MemWrite <= 0; MemRead <= 0; ALUSrc <= 0;end
      endcase
     end
endmodule
