`include "carry_save_adder.v"
`include "bit4adder.v"
module mul4bit(a, b, prod, cout);
input [3:0] a, b;
output [7:0] prod;
output cout;
wire [7:0] p0, p1, p2, p3;
wire [7:0] s1, c1;
wire [7:0] s2, c2;
assign p0 = {1'b0, 1'b0, 1'b0, 1'b0, a[3] & b[0], a[2] & b[0], a[1] & b[0], a[0] & b[0]};
assign p1 = {1'b0, 1'b0, 1'b0, a[3] & b[1], a[2] & b[1], a[1] & b[1], a[0] & b[1], 1'b0};
assign p2 = {1'b0, 1'b0, a[3] & b[2], a[2] & b[2], a[1] & b[2], a[0] & b[2], 1'b0, 1'b0};
assign p3 = {1'b0, a[3] & b[3], a[2] & b[3], a[1] & b[3], a[0] & b[3], 1'b0, 1'b0, 1'b0};

CSA mod0(p0, p1, p2, s1, c1);
CSA mod1(s1, c1, p3, s2, c2);
adder mod2(s2, c2, prod, cout);
endmodule