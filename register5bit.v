
module dff1(d,clock,f);
input d,clock;                                               
output f;
reg f;
always @ (posedge clock)
f<=d;
endmodule

module register5bit(i,q,clock);
input [4:0]i;
input clock;
output [4:0]q;
reg [4:0] q;

dff1 stage0(i[0],clock,q[0]);
dff1 stage1(i[1],clock,q[1]);
dff1 stage2(i[2],clock,q[2]);
dff1 stage3(i[3],clock,q[3]);
dff1 stage4(i[4],clock,q[4]);
endmodule


