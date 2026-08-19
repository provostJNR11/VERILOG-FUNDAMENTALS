module sr_flip_flop (
    input S,
    input R,
    input CLK,
    output reg Q
);

always @(posedge CLK) begin

    case ({S,R})

        2'b00: Q <= Q;
        2'b01: Q <= 0;
        2'b10: Q <= 1;
        2'b11: Q <= 1'bx;

    endcase

end

endmodule