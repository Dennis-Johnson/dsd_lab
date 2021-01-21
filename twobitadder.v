module twobitadder(cin,x,y,s,cout);
input [1:0] x,y;
input cin;
output cout;
output [1:0] s;

wire c1;
lab4full stage0(cin,x[0],y[0],s[0],c1);
lab4full stage1(c1,x[1],y[1],s[1],cout);

endmodule
