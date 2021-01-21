module lab31st(a,b,c,d,f);
input a,b,c,d;
output f;
wire bn,dn,abn,cdn,fn;
assign bn = ~(b & b);
assign dn = ~(d & d);
assign abn = ~(a & bn);
assign cdn = ~(c & dn);
assign fn  = ~(abn & cdn);
assign f   = ~(fn & fn);
endmodule
