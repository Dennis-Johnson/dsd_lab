module lab4decomposed(x,y,cin,s,cout);
input x,y,cin;
output s,cout;
wire is,ic;
assign is=x^y;
assign ic=x&y;
assign s=is^cin;
assign cout=ic|(cin&is);
endmodule
