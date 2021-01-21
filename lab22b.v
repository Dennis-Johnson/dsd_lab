module lab22b(a,b,c,d,f);
input a,b,c,d;
output f;
assign f = ((~b)|c|d) & ((~a)|b|(~c)) & ((~a)|c|(~d)) & (a|(~c)|d);
endmodule
