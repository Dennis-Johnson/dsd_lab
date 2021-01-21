module lab7majority(x1,x2,x3,f);
input x1,x2,x3;
output f;
wire a,o;
assign a = x2 & x3;
assign o = x2 | x3;
muxtwo result(a,o,x1,f);
endmodule


