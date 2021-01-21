module lab5q3(c,b);
input [3:0] c;
output [3:0] b;

assign b[3] = c[3]&c[2] | c[3]&~c[1]&~c[0];
assign b[2] = c[2]&~c[1]&~c[0] | ~c[2]&c[0] | ~c[2]&c[1] ;
assign b[1] = c[1] ^ c[0];
assign b[0] =c[0];

endmodule  
