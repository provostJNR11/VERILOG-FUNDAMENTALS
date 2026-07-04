//Usman Abubakar---01/07/2026---comparator_tb

module comparator_1bit_tb;

reg A, B;
wire GT, LT, EQ;

comparator_1bit uut (
    .A(A),
    .B(B),
    .GT(GT),
    .LT(LT),
    .EQ(EQ)
);

initial begin
    $monitor("A=%b B=%b GT=%b LT=%b EQ=%b",
              A, B, GT, LT, EQ);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule
