module jk_flip_flop_tb;

reg J, K, CLK;
wire Q;

jk_flip_flop uut (
    .J(J),
    .K(K),
    .CLK(CLK),
    .Q(Q)
);

// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin

    $monitor("Time=%0t J=%b K=%b Q=%b",
              $time, J, K, Q);

    // No change
    J = 0; K = 0;
    #10;

    // Set
    J = 1; K = 0;
    #10;

    // Reset
    J = 0; K = 1;
    #10;

    // Toggle
    J = 1; K = 1;
    #10;

    J = 1; K = 1;
    #10;

    $finish;

end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,jk_flip_flop_tb);
end
endmodule