module VerilogComparator(N0_0,N0_1,N1_0,N1_1,more);
input wire [0:1]N0_0;
input wire [0:1]N0_1;
input wire [0:1]N1_0;
input wire [0:1]N1_1;
output wire more;

wire [0:3]c;
wire [0:3]d;
assign d = {N1_1[1],N1_1[0],N1_0[1],N1_0[0]};
assign c = {N0_1[1],N0_1[0],N0_0[1],N0_0[0]};



assign more = (c <= d);

endmodule