`timescale 1ns/1ps

module tb;

    reg [3:0] a, b;
    reg sel;
    wire [3:0] out;

    top_module uut (.a(a), .b(b), .sel(sel), .out(out));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb);

        a = 4'b0001; b = 4'b1010; sel = 0; #10;
        sel = 1; #10;
        a = 4'b1111; b = 4'b0000; sel = 0; #10;
        sel = 1; #10;

        $finish;
    end

endmodule
