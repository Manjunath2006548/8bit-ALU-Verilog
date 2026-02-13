// ======================================================
// 8-bit Arithmetic Logic Unit (ALU)
// Author: Manjunath Bhaskar Hebbar
// Description:
// Performs arithmetic and logical operations
// Generates Carry, Zero, Overflow, Negative flags
// ======================================================

module alu_8bit(
    input  [7:0] A,
    input  [7:0] B,
    input  [2:0] sel,
    output reg [7:0] R,
    output reg C,   // Carry Flag
    output reg Z,   // Zero Flag
    output reg V,   // Overflow Flag
    output reg N    // Negative Flag
);

always @(*) begin
    C = 0;
    V = 0;

    case(sel)

        3'b000: begin  // Addition
            {C, R} = A + B;
            V = (A[7] & B[7] & ~R[7]) | (~A[7] & ~B[7] & R[7]);
        end

        3'b001: begin  // Subtraction
            {C, R} = A - B;
            V = (A[7] & ~B[7] & ~R[7]) | (~A[7] & B[7] & R[7]);
        end

        3'b010: R = A & B;  // AND
        3'b011: R = A | B;  // OR
        3'b100: R = A ^ B;  // XOR
        3'b101: R = ~A;     // NOT
        3'b110: R = A << 1; // Left Shift
        3'b111: R = A >> 1; // Right Shift

        default: R = 8'b00000000;

    endcase

    Z = (R == 8'b00000000); // Zero flag
    N = R[7];               // Negative flag

end

endmodule
