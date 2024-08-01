`timescale 1ns / 1ps

module Control_Unit (
    input [2:0] Opcode,
    output reg [2:0] ALU_Sel,
    output reg Reg_Write
);
    always @(*) begin
        case (Opcode)
            3'b000: begin ALU_Sel = 3'b000; Reg_Write = 1; end  // ADD
            3'b001: begin ALU_Sel = 3'b001; Reg_Write = 1; end  // SUB
            3'b010: begin ALU_Sel = 3'b010; Reg_Write = 1; end  // MUL
            3'b011: begin ALU_Sel = 3'b011; Reg_Write = 1; end  // DIV
            3'b100: begin ALU_Sel = 3'b100; Reg_Write = 1; end  // AND
            3'b101: begin ALU_Sel = 3'b101; Reg_Write = 1; end  // OR
            3'b110: begin ALU_Sel = 3'b110; Reg_Write = 1; end  // XOR
            3'b111: begin ALU_Sel = 3'b111; Reg_Write = 1; end  // NOT
            default: begin ALU_Sel = 3'b000; Reg_Write = 0; end  // NOP
        endcase
    end
endmodule
