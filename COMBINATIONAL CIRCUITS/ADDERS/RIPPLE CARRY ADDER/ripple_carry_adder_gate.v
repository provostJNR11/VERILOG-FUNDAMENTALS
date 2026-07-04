//Usman Abubakar---01/07/2026---ripple carry adder DUT
module ripple_carry_adder_gate (
    input  [3:0] A,
    input  [3:0] B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);

    wire C1, C2, C3;

    // Full Adder 0
    wire x1_0, a1_0, a2_0;
    xor G1_0(x1_0, A[0], B[0]);
    xor G2_0(Sum[0], x1_0, Cin);
    and G3_0(a1_0, A[0], B[0]);
    and G4_0(a2_0, x1_0, Cin);
    or  G5_0(C1, a1_0, a2_0);

    // Full Adder 1
    wire x1_1, a1_1, a2_1;
    xor G1_1(x1_1, A[1], B[1]);
    xor G2_1(Sum[1], x1_1, C1);
    and G3_1(a1_1, A[1], B[1]);
    and G4_1(a2_1, x1_1, C1);
    or  G5_1(C2, a1_1, a2_1);

    // Full Adder 2
    wire x1_2, a1_2, a2_2;
    xor G1_2(x1_2, A[2], B[2]);
    xor G2_2(Sum[2], x1_2, C2);
    and G3_2(a1_2, A[2], B[2]);
    and G4_2(a2_2, x1_2, C2);
    or  G5_2(C3, a1_2, a2_2);

    // Full Adder 3
    wire x1_3, a1_3, a2_3;
    xor G1_3(x1_3, A[3], B[3]);
    xor G2_3(Sum[3], x1_3, C3);
    and G3_3(a1_3, A[3], B[3]);
    and G4_3(a2_3, x1_3, C3);
    or  G5_3(Cout, a1_3, a2_3);

endmodule
