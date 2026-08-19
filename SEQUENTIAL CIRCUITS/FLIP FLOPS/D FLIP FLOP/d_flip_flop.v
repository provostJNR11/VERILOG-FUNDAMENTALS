module d_flip_flop (
    input D,
    input CLK,
    output reg Q
);

always @(posedge CLK) begin

    if (D == 1'b0)
        Q <= 1'b0;

    else
        Q <= 1'b1;

end

endmodule