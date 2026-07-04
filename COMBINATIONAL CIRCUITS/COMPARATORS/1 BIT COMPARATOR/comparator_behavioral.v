//Usman Abubakar---01/07/2026---comparator DUT
module comparator_1bit(
    input A,
    input B,
    output reg GT,
    output reg LT,
    output reg EQ
);

	always @(*) begin
 GT = A & ~B;   // A > B
 LT = ~A & B;   // A < B
 EQ = ~(A ^ B); // A = B
	end

endmodule
