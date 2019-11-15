module CSA(X, Y, Z, S, C);
input [7:0] X, Y, Z;
output [7:0] S, C;
wire [7:0] temp;

assign S = X ^ Y ^ Z;
assign temp = (X & Y) | (Y & Z) | (Z & X);
assign C = {temp[6], temp[5], temp[4], temp[3], temp[2], temp[1], temp[0], 1'b0};
endmodule