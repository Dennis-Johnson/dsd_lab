module async4bitup(clock,q);
input clock;
output [3:0]q;
wire t=1;
wire r=1;
tff_negedge stage3(1,clock,r,q[0]);
tff_negedge stage2(1,q[0],r,q[1]);
tff_negedge stage1(1,q[1],r,q[2]);
tff_negedge stage0(1,q[2],r,q[3]);

endmodule
