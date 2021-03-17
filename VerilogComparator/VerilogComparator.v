module VerilogComparator(N0_0,N0_1,N1_0,N1_1,more);
input [1:0]N0_0;
input [1:0]N0_1;
input [1:0]N1_0;
input [1:0]N1_1;

output more;
reg more;


always @ (N0_0 or N0_1 or N1_0 or N1_1)
	begin
		assign wire [3:0]c = {N0_1, N0_0};
		assign wire [3:0]d = {N1_1, N1_0};
		
		if(c <= d) begin
		assign more = 1; end
		else begin
		assign more = 0; end

end

endmodule