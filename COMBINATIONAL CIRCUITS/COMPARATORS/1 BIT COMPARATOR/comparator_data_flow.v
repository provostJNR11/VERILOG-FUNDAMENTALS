//Usman Abubakar---01/07/2026---comparator DUT
module comparator_1bit(
    input A,
    input B,
    output GT,
    output LT,
    output EQ
);

assign GT = A & ~B;   // A > B
assign LT = ~A & B;   // A < B
assign EQ = ~(A ^ B); // A = B

endmodule
