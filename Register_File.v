`timescale 1ns / 1ps

module Register_File (
    input clk,
    input Reg_Write,
    input [15:0] Data_In,
    output reg [15:0] Data_Out
);
    reg [15:0] Register;

    always @(posedge clk) begin
        if (Reg_Write)
            Register <= Data_In;
        Data_Out <= Register;
    end
endmodule
