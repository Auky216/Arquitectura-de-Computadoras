module mux4_1(A,B,C,D,S1,S2,F);
    input A,B,C,D,S1,S2;
    output F;

    wire and_A_out,and_B_out,not_B_out;
    wire and_C_out,and_D_out,not_D_out;
    wire F1,F2;
    wire and_F1_out,and_F2_out, not_F2_out;

    not not_B(not_B_out,B);
    and and_A(and_A_out,A,S1);
    and and_B(and_B_out,not_B_out,S1);
    or or_F1_output(F1,and_A_out,and_B_out);

    not not_D(not_D_out,D);
    and and_C(and_C_out,C,S1);
    and and_D(and_D_out,not_D_out,S1);
    or or_F2_output(F2,and_C_out,and_D_out);

    not not_F2(not_F2_out,F2);
    and and_F1(and_F1_out,F1,S2);
    and and_F2(and_F2_out,not_F2_out,S2);
    or or_F_output(F,and_F1_out,and_F2_out);


endmodule