module lab4full(x,y,cin,s,cout);
input x,y,cin;
output s,cout;
assign s = cin^x^y;
assign cout=cin&x | cin&y | x&y;
endmodule
