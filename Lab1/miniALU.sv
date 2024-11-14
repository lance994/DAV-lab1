module miniALU (
    // TODO: define your input and output ports
	input [3:0] op1,
	input [3:0] op2, 
	input operation,
	input sign,
	output [19:0] result
    );

    // The following block contains the logic of your combinational circuit
    always_comb begin
		if (operation) begin // shift
			if (sign) begin // right
				result = op1 >>> op2;
			end
			else begin  // left
				result = op1 <<< op2;
			end
		end
		else begin // addition/subtraction
			if (sign) begin // subtraction
				result = op1 - op2;
			end
			else begin // addition
				result = op1 + op2;
			end
		end

        // TODO: write the logic for your miniALU here

    end
endmodule