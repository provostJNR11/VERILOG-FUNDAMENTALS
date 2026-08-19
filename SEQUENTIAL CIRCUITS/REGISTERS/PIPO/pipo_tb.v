module pipo_tb;

reg clk;
reg reset;
reg [3:0] pi;
wire [3:0] po;

// Instantiate the PIPO Register
pipo dut(
    .clk(clk),
    .reset(reset),
    .pi(pi),
    .po(po)
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
    $fsdbDumpvars(0, pipo_tb);

    // Display signal values
    $monitor("clk=%b reset=%b pi=%b po=%b",
              clk, reset, pi, po);

    // Test reset
    reset = 1;
    pi = 4'b0000;
    #10;

    // Load first data
    reset = 0;
    pi = 4'b1010;
    #10;

    // Load second data
    reset = 0;
    pi = 4'b1100;
    #10;

    // Load third data
    reset = 0;
    pi = 4'b0111;
    #10;

    // Load fourth data
    reset = 0;
    pi = 4'b1111;
    #10;

    // End simulation
    $finish;
end

endmodule
