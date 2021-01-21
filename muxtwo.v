module muxtwo(a,b,s,f);
input a,b,s;
output f;
reg f;
always @ (s)
f = s? b:a;
endmodule
