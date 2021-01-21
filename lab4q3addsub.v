module lab4q3addsub(cin,x,y,s,cout);
input [3:0] x,y;
input cin;
output cout;
output [3:0] s;
wire [3:0] z;
assign z[0]=y[0]^cin;
assign z[1]=y[1]^cin;
assign z[2]=y[2]^cin;
assign z[3]=y[3]^cin;

lab4q2 result(cin,x,z,s,cout);
endmodule
