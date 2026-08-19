module pipo(
    input clk,             // Clock input
    input reset,           // Active-high reset
    input [3:0] pi,        // Parallel input
    output reg [3:0] po    // Parallel output
);

// Trigger on the positive edge of the clock
always @(posedge clk)
begin
    if (reset)
        po <= 4'b0000;     // Reset output
    else
        po <= pi;          // Load parallel data
end

endmodule
