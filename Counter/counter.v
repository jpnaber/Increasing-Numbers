module counter(clock, enable, last);

output [7:0] last;
reg [7:0]num;
input wire clock;
input wire enable;

always @(clock)
	begin
	if(enable == 0)
		num = 7'd00000000;
	else
		num <= num + 7'd1;
	
	end
assign last = num;
endmodule
