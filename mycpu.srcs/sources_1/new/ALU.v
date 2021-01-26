`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 09:42:42
// Design Name: 
// Module Name: ALU
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


module ALU(
in_data1,in_data2,out_data,aluop,Z
    );
    input [31:0]in_data1,in_data2;
    input [2:0]aluop;
    output reg[31:0]out_data;
    output Z;//判断两个数是否相等
    always@(*)begin
        case(aluop)
            3'b100:out_data<=in_data1+in_data2;
            3'b101:out_data<=in_data1+in_data2;
            3'b110:out_data<=in_data1-in_data2;
            3'b000:out_data<=in_data1&in_data2;
            3'b001:out_data<=in_data1|in_data2;
            3'b011:out_data<=in_data1^in_data2;
        default:
            out_data<=32'b0;
        endcase
    end
    assign Z=(out_data==0);//相等为1，相异为0
endmodule
