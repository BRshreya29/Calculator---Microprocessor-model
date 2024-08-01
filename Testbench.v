`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2024 15:56:03
// Design Name: 
// Module Name: Testbench
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


module Testbench;
    reg clk;
    reg [2:0] Opcode;
    reg [15:0] A, B;
    wire [15:0] ALU_Result;

    Microprocessor uut (
        .clk(clk),
        .Opcode(Opcode),
        .A(A),
        .B(B),
        .ALU_Result(ALU_Result)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        // Test ADD
        Opcode = 3'b000; A = 16'h0003; B = 16'h0001; #10;
        // Test SUB
        Opcode = 3'b001; A = 16'h0003; B = 16'h0001; #10;
        // Test MUL
        Opcode = 3'b010; A = 16'h0003; B = 16'h0002; #10;
        // Test DIV
        Opcode = 3'b011; A = 16'h0004; B = 16'h0002; #10;
        // Test AND
        Opcode = 3'b100; A = 16'h0003; B = 16'h0001; #10;
        // Test OR
        Opcode = 3'b101; A = 16'h0003; B = 16'h0001; #10;
        // Test XOR
        Opcode = 3'b110; A = 16'h0003; B = 16'h0001; #10;
        // Test NOT
        Opcode = 3'b111; A = 16'h0003; B = 16'h0000; #20;
        $stop;
    end
endmodule

