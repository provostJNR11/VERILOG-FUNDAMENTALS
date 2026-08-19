module sr_flip_flop_tb;

reg S, R, CLK;
wire Q;

sr_flip_flop uut (
    .S(S),
    .R(R),
    .CLK(CLK),
    .Q(Q)
    
);

initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end

initial begin

    $monitor("Time=%0t S=%b R=%b Q=%b",
              $time, S, R, Q,);

    S=0; R=0; #10; // No change

    S=1; R=0; #10; // Set

    S=0; R=1; #10; // Reset

    S=1; R=1; #10; // Invalid

    $finish;

end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,sr_flip_flop_tb);
end
endmodule