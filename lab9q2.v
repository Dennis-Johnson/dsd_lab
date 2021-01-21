module lab9q2(abcd,f,g,h);
input [3:0]abcd;
output f,g,h;
wire [15:0]xf;
wire [15:0]xg;
wire [15:0]xh;
decoder164 resultf(abcd,xf,1);
decoder164 resultg(abcd,xg,1);
decoder164 resulth(abcd,xh,1);
assign f = xf[3] | xf[7] | xf[10] | xf[11];
assign g = xg[2] | xg[3] | xg[10] | xg[14];
assignh = xh[2] | xh[3] | xh[7] | xh[14] | xh[15];
endmodule
