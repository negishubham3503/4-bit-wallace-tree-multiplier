`include "fulladder.v"
module adder(x, y, sum, cout);
input [7:0] x, y;
output [7:0] sum;
output cout;
wire [6:0] c;

fulladder mod7(x[0], y[0], 1'b0, sum[0], c[0]);
fulladder mod8(x[1], y[1], c[0], sum[1], c[1]);
fulladder mod9(x[2], y[2], c[1], sum[2], c[2]);
fulladder mod10(x[3], y[3], c[2], sum[3], c[3]);
fulladder mod11(x[4], y[4], c[3], sum[4], c[4]);
fulladder mod12(x[5], y[5], c[4], sum[5], c[5]);
fulladder mod13(x[6], y[6], c[5], sum[6], c[6]);
fulladder mod14(x[7], y[7], c[6], sum[7], cout);

endmodule