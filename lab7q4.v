module lab7q4(b,g);
input [3:0] b;
output [3:0] g;
wire [3:0] w3,w2,w1,w0;
wire x,o,z;
assign z=0;
assign o=1;
assign w3={o,o,z,z};
assign w2={z,o,o,z};
assign w1={~b[1],b[1],~b[1],b[1]};
assign x = ~b[1]&b[0] | ~b[0]&b[1];
assign w0={x,x,x,x};
muxfour stage0(w3,b[3:2],g[3]);
muxfour stage1(w2,b[3:2],g[2]);
muxfour stage2(w1,b[3:2],g[1]);
muxfour stage3(w0,b[3:2],g[0]);
endmodule
