module piso(
    input clk,            // Clock input
    input mode,           // 0 = Parallel Load, 1 = Shift
    input [3:0] pi,       // Parallel input
    output sout           // Serial output
);

reg [3:0] q;              // Shift register

// Trigger on the positive edge of the clock
always @(posedge clk)
begin
    if (mode == 0)
        q <= pi;          // Load parallel data
    else
    begin
        q[3] <= 1'b0;     // Shift right
        q[2] <= q[3];
        q[1] <= q[2];
        q[0] <= q[1];
    end
end

// Serial output
assign sout = q[0];

endmodule
