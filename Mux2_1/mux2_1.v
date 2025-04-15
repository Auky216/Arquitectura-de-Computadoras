module mux2_1(A,B,S,F);
    input A,B,S;
    output F;
    wire and_A_out,and_B_out,not_B_out;

    not not_B(not_B_out,B);
    and and_A(and_A_out,A,S);
    and and_B(and_B_out,B,S);
    or or_F_out(F,and_A_out,and_B_out);


endmodule