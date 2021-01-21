module lab9q1(abcd,f);
input [3:0]abcd;
output f;
wire [15:0]i;
wire en;
assign en=1;
decoder164 result(abcd,i,en);
assign f = i[1] | i[3] | i[6] | i[7] | i[9] | i[14] | i[15];

endmodule
