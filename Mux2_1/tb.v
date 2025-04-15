`timescale 1ns / 1ns
`include "mux2_1.v"

module mux2_1_tb();

    reg a,b,s;
    wire f;

    mux2_1 mux_test (.A(a), .B(b), .S(s), .F(f));

    initial begin
        a = 1; b = 0; s = 0;
        #2;

        a = 1; b = 0; s = 1;
        #2;

        a = 0; b = 1; s = 0;
        #2;

        a = 0; b = 1; s = 1;
        #2;
    end

    initial begin
        $dumpfile("mux2_1.vcd");  // Nombre del archivo de salida VCD
        $dumpvars;  // Volcar todas las variables a VCD
    end

endmodule