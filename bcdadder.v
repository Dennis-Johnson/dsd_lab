module bcdadder(x,y,cin,s,cout);
input [3:0] x,y;
input cin;
output cout;
output [3:0] s;
wire k,p;
wire [3:0] z,cor;

lab4q2 interstage(cin,x,y,z,cout);

assign k = cout | (z[3]&z[2]) | (z[3]&z[1]);

assign cor[0]=0;
assign cor[1]=k;
assign cor[2]=k;
assign cor[3]=0;

lab4q2 result(cin,z,cor,s,p);
endmodule


