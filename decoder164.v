module decoder164(w,y,en);
input [3:0] w;
input en;
output [15:0]y;
wire i1,i2;
assign i1=~w[3]&en;
assign i2= w[3]&en;
lab8q2 stage0(w[2:0],y[7:0],i1);
lab8q2 stage1(w[2:0],y[15:8],i2);
endmodule
