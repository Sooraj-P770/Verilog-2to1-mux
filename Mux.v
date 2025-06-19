module top_module(
    input [3:0] a, b,
    input [0:0] sel,
    output [3:0] out
);
    assign out = (sel == 1'b0) ? a : b;
endmodule
