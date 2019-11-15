`include "mul4bit.v"
module multb;
reg [3:0] a, b;
wire [7:0] prod;
wire cout;

mul4bit mul(a, b, prod, cout);
initial begin
    a = 4'd3;
    b = 4'd3;
end

initial 
    $monitor("%b", prod);

endmodule