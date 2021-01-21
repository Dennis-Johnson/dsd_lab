module lab4half(x,y,s,c);                                                                                                              
input x,y;
output s,c;
assign s=(~x&y) |(x&~y);
assign c =x&y;
endmodule
