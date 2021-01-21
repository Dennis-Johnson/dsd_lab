module lab32nd(a,b,c,d,f);
input a,b,c,d;
output f;
wire dn,g,h,i,fn;
assign dn = ~(d | d);
assign g  = ~(a|dn|c);
assign h = ~(b|c);
assign i = ~(b|d);
assign fn = ~(g|h|i);
assign f = ~(fn|fn);
endmodule
