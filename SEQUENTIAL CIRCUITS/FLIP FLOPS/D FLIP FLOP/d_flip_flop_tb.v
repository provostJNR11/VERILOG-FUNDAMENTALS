module d_flip_flop_tb;

reg D;
reg CLK;

wire Q;

d_flip_flop uut (
    .D(D),
    .CLK(CLK),
    .Q(Q)
);

// Clock generation
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin

    $monitor("Time=%0t D=%b Q=%b ",
              $time, D, Q);

    D = 0;
    #10;

    D = 1;
    #10;

    D = 0;
    #10;

    D = 1;
    #10;

    $finish;

end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,d_flip_flop_tb);
end
endmodule