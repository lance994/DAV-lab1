module miniALU_top(
	input [9:0] switches, 
	output logic [9:0] leds
	);

always_comb begin
	leds[9:0] = switches[9:0];
end
	
endmodule