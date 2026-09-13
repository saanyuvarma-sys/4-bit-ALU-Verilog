module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] op;
wire [3:0] result;

alu uut (
    .A(A),
    .B(B),
    .op(op),
    .result(result)
);

initial begin

    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);

    // Test 1: Addition
    A = 4'b0011;
    B = 4'b0010;
    op = 3'b000;
    #10;

    // Test 2: Addition
    A = 4'b0111;
    B = 4'b0101;
    op = 3'b000;
    #10;

    // Test 3: Subtraction
    A = 4'b1001;
    B = 4'b0011;
    op = 3'b001;
    #10;

    // Test 4: Subtraction
    A = 4'b1111;
    B = 4'b0101;
    op = 3'b001;
    #10;

    // Test 5: AND
    A = 4'b1100;
    B = 4'b1010;
    op = 3'b010;
    #10;

    // Test 6: OR
    A = 4'b1100;
    B = 4'b1010;
    op = 3'b011;
    #10;

    // Test 7: XOR
    A = 4'b1100;
    B = 4'b1010;
    op = 3'b100;
    #10;

    // Test 8: All zeros
    A = 4'b0000;
    B = 4'b0000;
    op = 3'b000;
    #10;

    // Test 9: Maximum values
    A = 4'b1111;
    B = 4'b1111;
    op = 3'b000;
    #10;

    // Test 10: Invalid operation
    A = 4'b0101;
    B = 4'b0011;
    op = 3'b111;
    #10;

    $display("All ALU tests completed!");
    $finish;

end

endmodule
