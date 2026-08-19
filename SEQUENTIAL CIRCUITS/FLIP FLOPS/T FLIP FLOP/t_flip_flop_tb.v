module t_flip_flop_tb;

reg T;
reg CLK;
wire Q;
wire Qbar;

t_flip_flop uut (
    .T(T),
    .CLK(CLK),
    .Q(Q)
);

// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin

    $monitor("Time=%0t T=%b Q=%b ",
              $time, T, Q);

    // Hold state
    T = 0;
    #10;

    // Toggle
    T = 1;
    #10;

    // Toggle again
    T = 1;
    #10;

    // Hold state
    T = 0;
    #10;

    $finish;

end
initial begin
	$fsdbDumpfile("dumpfsdb");
	$fsdbDumpvars(0,t_flip_flop_tb);
end
endmodule