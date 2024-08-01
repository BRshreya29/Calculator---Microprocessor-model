`timescale 1ns / 1ps

module Microprocessor (
    input clk,
    input [2:0] Opcode,
    input [15:0] A, B,
    output [15:0] ALU_Result
);
    wire [2:0] ALU_Sel;
    wire Reg_Write;
    wire [15:0] ALU_Out;
    wire Carry_Out;

    Control_Unit cu (.Opcode(Opcode), .ALU_Sel(ALU_Sel), .Reg_Write(Reg_Write));
    ALU alu (.A(A), .B(B), .ALU_Sel(ALU_Sel), .ALU_Out(ALU_Out), .Carry_Out(Carry_Out));
    Register_File rf (.clk(clk), .Reg_Write(Reg_Write), .Data_In(ALU_Out), .Data_Out(ALU_Result));
endmodule
