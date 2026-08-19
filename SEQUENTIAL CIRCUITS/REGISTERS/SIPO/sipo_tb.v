module sipo_tb;

reg clk;
reg sin;
wire [3:0] pout;

// Instantiate the SIPO Shift Register
sipo dut(
    .clk(clk),
    .sin(sin),
    .pout(pout)
);

// Generate clock with 10 ns period
initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Apply test inputs
initial
begin
    // Generate waveform file
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, sipo_tb);

    // Display signal values
    $monitor("Time=%0t clk=%b sin=%b pout=%b",
             $time, clk, sin, pout);

    // Apply serial data: 1 0 1 1
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 1; #10;

    // Shift in zeros
    sin = 0; #10;
    sin = 0; #10;
    sin = 0; #10;
    sin = 0; #10;

    // End simulation
    $finish;
end

endmodule
