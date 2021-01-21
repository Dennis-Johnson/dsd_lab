module lab4q2(cin,x,y,s,cout);
input cin;
input [3:0] x,y;
output [3:0] s;
output cout;
wire [3:1]c;
lab4full stage0(cin,x[0],y[0],s[0],c[1]);
lab4full stage1(c[1],x[1],y[1],s[1],c[2]);
lab4full stage2(c[2],x[2],y[2],s[2],c[3]);
lab4full stage3(c[3],x[3],y[3],s[3],cout);
endmodule



