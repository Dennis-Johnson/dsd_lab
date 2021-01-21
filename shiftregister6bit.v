module dff2(d,clock,f);
input d,clock;                                               
output f;
reg f;
always @ (posedge clock)
f<=d;
endmodule

module shiftregister6bit(d,clock,q);
input d,clock;
output [5:0]q;

dff2 stage0(d,clock,q[0]);
dff2 stage1(q[0],clock,q[1]);
dff2 stage2(q[1],clock,q[2]);
dff2 stage3(q[2],clock,q[3]);
dff2 stage4(q[3],clock,q[4]);
dff2 stage5(q[4],clock,q[5]);
endmodule
