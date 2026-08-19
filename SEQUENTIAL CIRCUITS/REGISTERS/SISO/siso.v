module siso(
    input clk,   
    input sin,          
    output sout         
);

reg [3:0] q;          


always @(posedge clk)
begin
    q[3] <= sin;        
    q[2] <= q[3];       
    q[1] <= q[2];
    q[0] <= q[1];
end


assign sout = q[0];

endmodule
