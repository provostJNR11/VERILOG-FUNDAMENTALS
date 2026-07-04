//Usman Abubakar---01/07/2026---half adder DUT
module half_adder (
    input A,
    input B,
    output reg Sum,
    output reg Carry
);

always @(*) begin
    Sum   = A ^ B;
    Carry = A & B;
end

endmodule
