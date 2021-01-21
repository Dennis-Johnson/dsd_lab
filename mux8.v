module mux8(w,s,f);
input [7:0]w;
input [2:0]s;
output f;
reg f;
always @ (w or s)
begin
case(s)3 : f = w[4];
0 : f = w[7];
1 : f = w[6];
2 : f = w[5];

4 : f = w[3];
5 : f = w[2];
6 : f = w[1];
7 : f = w[0];
endcase
end
endmodule
