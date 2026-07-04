//Usman Abubakar---01/07/2026---ripple carry adder adder tb
module ripple_carry_adder_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;

    // Outputs
    wire [3:0] Sum;
    wire Cout;

    // Instantiate the DUT
    ripple_carry_adder DUT (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $display("Time\tA\tB\tCin\tSum\tCout");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, Cin, Sum, Cout);

        // Test Case 1
        A = 4'b0000; B = 4'b0000; Cin = 0;
        #10;

        // Test Case 2
        A = 4'b0011; B = 4'b0101; Cin = 0;
        #10;

        // Test Case 3
        A = 4'b1010; B = 4'b0101; Cin = 0;
        #10;

        // Test Case 4
        A = 4'b1111; B = 4'b0001; Cin = 0;
        #10;

        // Test Case 5
        A = 4'b1111; B = 4'b1111; Cin = 0;
        #10;

        // Test Case 6
        A = 4'b1011; B = 4'b0110; Cin = 1;
        #10;

        $finish;
    end
initial begin

	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,ripple_carry_adder_tb);
end
endmodule
