module lab4q4mult(cin,a,b,p,cout);
input [1:0] a,b;
input cin;
output cout;
output [3:0] p;
wire c1;
wire [1:0] x,y,z;
assign p[0] = a[0]&b[0];
assign x[0]=a[1]&b[0];
assign x[1]=0;
assign y[0]=a[0]&b[1];
assign y[1]=a[1]&b[1];

twobitadder middlebit(cin,x,y,z,cout);

assign p[1]=z[0];
assign p[2]=z[1];
assign p[3]=cout;
endmodule



