module lab34th(a,b,c,d,f);
input a,b,c,d;
output f;
wire an,cn,dn,g;
assign an = ~(a | a);
assign cn = ~(c | c);
assign dn = ~(d | d);
assign g  = ~(an|cn);
assign f  = ~(dn | g);
endmodule

