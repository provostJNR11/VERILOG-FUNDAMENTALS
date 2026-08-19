module sipo(
    input clk,           // Clock input
    input sin,           // Serial input
    output [3:0] pout    // Parallel output
);

reg [3:0] q;             // Shift register

// Trigger on the positive edge of the clock
always @(posedge clk)
begin
    q[3] <= sin;         // Load serial input
    q[2] <= q[3];        // Shift data
    q[1] <= q[2];
    q[0] <= q[1];
end

// Parallel output
assign pout = q;

endmodule
