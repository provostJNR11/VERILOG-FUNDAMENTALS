module and_gate_tb; //module declaration

reg a,b; // mapping the input with storage 
wire y; //mapping the output

and_gate dut(a,b,y); // instantiation

initial begin
$monitor ("a=%0d, b=%0d, y=%0d", a,b,y); //system task to monitor the input and output behaviour
#2 a=0; b=0; //input values
#2 a=0; b=1;
#2 a=1; b=0;
#2 a=1; b=1;
end

endmodule
