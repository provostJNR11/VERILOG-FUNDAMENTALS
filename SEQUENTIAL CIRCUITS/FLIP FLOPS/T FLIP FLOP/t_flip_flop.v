module t_flip_flop (
    input T,
    input CLK,
    output reg Q
);

always @(posedge CLK) begin

    if (T == 1'b0)
        Q <= Q;       // No change

    else
        Q <= ~Q;      // Toggle

end

endmodule