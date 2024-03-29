module lab5q4(x,y,l,g,e);
input [3:0] x,y;
output l,g,e;
wire l1,g1,e1,l2,g2,e2;
comp2bit stage0(x[0],y[0],x[1],y[1],l1,g1,e1);
comp2bit stage1(x[2],y[2],x[3],y[3],l2,g2,e2);
assign e =e1&e2;
assign g = g2|(e2&g1);
assign l = l2|(l2&l1);
endmodule

module comp2bit(x1,y1,x0,y0,l,g,e);
input x0,x1,y0,y1;
output l,g,e;
wire i0,i1;

assign i1 =~(x1^y1);
assign i0 =~(x0^y0);

assign e  =i1&i0;
assign g = (x1&~y1) | (i1&x0&~y0);
assign l = ~(g|e);
endmodule

