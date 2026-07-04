//Usman Abubakar---01/07/2026---full subtractor DUT

module full_subtractor (
    input A,
    input B,
    input Bin,
    output Difference,
    output Borrow
);

    wire w1, w2, w3, w4, w5;

    // Difference output
    xor X1(w1, A, B);
    xor X2(Difference, w1, Bin);

    // Borrow output
    not N1(w2, A);
    and A1(w3, w2, B);

    xnor X3(w4, A, B);
    and A2(w5, w4, Bin);

    or O1(Borrow, w3, w5);

endmodule
