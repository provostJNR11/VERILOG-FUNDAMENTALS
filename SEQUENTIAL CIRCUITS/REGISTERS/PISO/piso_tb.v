module piso_tb;

reg clk;
reg mode;
reg [3:0] pi;
wire sout;

// Instantiate the PISO Shift Register
piso dut(
    .clk(clk),
    .mode(mode),
    .pi(pi),
    .sout(sout)
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
    $fsdbDumpvars(0, piso_tb);

    // Display signal values
    $monitor("Time=%0t clk=%b mode=%b pi=%b sout=%b",
             $time, clk, mode, pi, sout);

    // Parallel load 1011
    mode = 0;
    pi = 4'b1011;
    #10;

    // Shift data out
    mode = 1;
    #10;
    #10;
    #10;
    #10;

    // Parallel load 1100
    mode = 0;
    pi = 4'b1100;
    #10;

    // Shift data out
    mode = 1;
    #10;
    #10;
    #10;
    #10;

    // End simulation
    $finish;
end

endmodule
