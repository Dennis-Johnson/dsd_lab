module johnson5bit(clock,q);
input clock;
output [4:0]q;
wire o=0;
dff_posedge stage4(~q[0],clock,o,q[4]);
dff_posedge stage3(q[4],clock,o,q[3]);
dff_posedge stage2(q[3],clock,o,q[2]);
dff_posedge stage1(q[2],clock,o,q[1]);
dff_posedge stage0(q[1],clock,o,q[0]);

endmodule
