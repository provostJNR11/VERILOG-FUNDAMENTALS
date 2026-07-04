//Usman Abubakar---01/07/2026---full adder DUT
module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

assign Sum  = A ^ B ^ Cin;
assign Cout = (A & B) | (Cin & (A ^ B));

endmodule
