`timescale 1ns / 1ns
`include "mux4_1.v"

module mux4_1_tb();
    reg a,b,c,d,s1,s2;
    wire f;

    mux4_1 mux4_test(.A(a), .B(b), .C(c), .D(d),.S1(s1), .S2(s2), .F(f));

    initial begin

        a = 1;b=0;c=1;d=1;s1=1;s2=0;
        #2;
        

    end

    initial begin
        $dumpfile("mux2_1.vcd");  // Nombre del archivo de salida VCD
        $dumpvars;  // Volcar todas las variables a VCD
    end
endmodule