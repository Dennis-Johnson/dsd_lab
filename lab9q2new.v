module lab9q2new(abcd,f,g,h);
input [3:0]abcd;
output f,g,h;
wire [15:0]xf;
wire [15:0]xg;
wire [15:0]xh;
decodertree stf(abcd,xf,1);
decodertree stg(abcd,xg,1);
decodertree sth(abcd,xh,1);
assign f = xf[3]|xf[6]|xf[7]|xf[10]|xf[11]|xf[14];
assign g = xg[2]|xg[3]|xg[10]|xg[14];
assign h = xh[2]|xh[3]|xh[7] |xh[14]|xh[15];
endmodule

module decodertree(w,y,en);
input [3:0]w;
input en;
output [15:0]y;

wire [3:0]sel;
decoder24 sts(w[3:2],sel,en);
decoder24 st0(w[1:0],y[3:0],sel[0]);
decoder24 st1(w[1:0],y[7:4],sel[1]);
decoder24 st2(w[1:0],y[11:8],sel[2]);
decoder24 st3(w[1:0],y[15:12],sel[3]);
endmodule
