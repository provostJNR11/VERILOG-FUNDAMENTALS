//Usman Abubakar---01/07/2026---comparator DUT

module comparator_1bit (
    input A,
    input B,
    output A_greater_B,
    output A_equal_B,
    output A_less_B
);

    wire A_not, B_not;

    // Invert inputs
    not G1(A_not, A);
    not G2(B_not, B);

    // A > B
    and G3(A_greater_B, A, B_not);

    // A < B
    and G4(A_less_B, A_not, B);

    // A == B
    xnor G5(A_equal_B, A, B);

endmodule
