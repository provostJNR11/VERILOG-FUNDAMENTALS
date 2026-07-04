//Usman Abubakar---01/07/2026---full adder DUT

module full_adder(
    input A, B, Cin,
    output reg Sum, Cout
);

always @(*) begin
    Sum  = A ^ B ^ Cin;
    Cout = (A & B) | (B & Cin) | (A & Cin);
end

endmodule
