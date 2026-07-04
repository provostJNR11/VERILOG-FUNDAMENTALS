//Usman Abubakar---01/07/2026---full subtractor DUT

module full_subtractor(
    input A, B, Bin,
    output reg D, Bout
);

always @(*) begin
    D   = A ^ B ^ Bin;
    Bout = (~A & B) | (~A & Bin) | (B & Bin);
end

endmodule
