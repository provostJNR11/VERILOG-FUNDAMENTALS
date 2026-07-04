//Usman Abubakar---01/07/2026---half adder DUT
module half_adder(
    input A,
    input B,
    output Sum,
    output Carry
);

assign Sum   = A ^ B;  // XOR operation
assign Carry = A & B;  // AND operation

endmodule
