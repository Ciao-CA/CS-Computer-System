`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/29 10:07:45
// Design Name: 
// Module Name: ALUCU
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


module ALUCU(
func,aluop,aluctrl,
    );
    input [5:0]func;
    input [1:0]aluop;
    output reg[2:0]aluctrl;
    always@(*)begin
        case(aluop)
            2'b00:aluctrl<=3'b100;//加
            2'b01:aluctrl<=3'b110;//减
            default:
                case(func)
                    6'b100000:aluctrl<=3'b100;//加
                    6'b100001:aluctrl<=3'b101;
                    6'b100010:aluctrl<=3'b110;//减
                    6'b100100:aluctrl<=3'b000;//与
                    6'b100101:aluctrl<=3'b001;//或
                    6'b101010:aluctrl<=3'b011;//异或
                    default:aluctrl<=3'bxxx;
                endcase
        endcase
    end
endmodule
