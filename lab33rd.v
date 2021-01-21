module lab33rd(x1,x2,x3,x4,x5,f);
input x1,x2,x3,x4,x5;
output f;
wire g;
assign g = ~((x1 & (~x2)) | (~x5));
assign f = g&((~x3 & ~x4)|(x3 & x4)) | ~g&(~x3 & x4);
endmodule
