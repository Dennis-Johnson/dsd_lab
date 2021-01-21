module decoder38(w,y,en);
input [2:0] w;
input en;
output [7:0] y;
wire i1,i2;
assign i1 = ~w[2] & en;
assign i2 =w[2]&en;

decoder24 stage0(w[1:0],y[3:0],i1);
decoder24 stage1(w[1:0],y[7:4],i2);
endmodule


