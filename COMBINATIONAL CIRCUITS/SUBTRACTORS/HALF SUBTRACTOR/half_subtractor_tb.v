module half_subtractor_tb;

reg A, B;
wire D, Bo;

half_subtractor uut (
    .A(A),
    .B(B),
    .D(D),
    .Bo(Bo)
);

initial begin
    $monitor("A=%b B=%b Difference=%b Borrow=%b",
              A, B, D, Bo);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule