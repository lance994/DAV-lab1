
`timescale 1ns/1ns

module tb(
	output [9:0] out
	);
	
	logic [9:0] a = 10'b1111111111;
	
	miniALU_top UUT(.switches(a), .leds(out));
	
	
	initial begin
		#20 a[4:0] = 5'b00000;
		#20
		assert (out[4:0]==5'b00000);
		$display("correct");
		#20 $stop;
	end
		
		
endmodule