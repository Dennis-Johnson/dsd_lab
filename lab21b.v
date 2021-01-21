module lab21b(a,b,c,d,f);
input a,b,c,d;
output f;
assign f =  (~b)&c | (~b)&d | ((~c)&(~d)&b);
endmodule
