`timescale 1ns / 1ps

module ALU (
    input [15:0] A, B,
    input [2:0] ALU_Sel,
    output reg [15:0] ALU_Out,
    output reg Carry_Out
);
    always @(*) begin
        case (ALU_Sel)
            3'b000: {Carry_Out, ALU_Out} = A + B;       // Addition
            3'b001: {Carry_Out, ALU_Out} = A - B;       // Subtraction
            3'b010: ALU_Out = A * B;                    // Multiplication
            3'b011: ALU_Out = A / B;                    // Division
            3'b100: ALU_Out = A & B;                    // AND
            3'b101: ALU_Out = A | B;                    // OR
            3'b110: ALU_Out = A ^ B;                    // XOR
            3'b111: ALU_Out = ~A;                       // NOT
            default: {Carry_Out, ALU_Out} = 17'b0;
        endcase
    end
endmodule
