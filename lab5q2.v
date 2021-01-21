module lab5q2(g,b);
input [3:0] g;
output [3:0] b;
assign b[3] = g[3];
assign b[2] = g[2] ^ g[3];

endmodule

