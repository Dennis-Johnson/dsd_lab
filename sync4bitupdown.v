module sync4bitupdown(m,clock,q);
input clock,m;
output [3:0]q;
endmodule

module sync4bitup(clock,q);
input clock;
output [3:0]q;
wire t=1;
wire r=1;

tff_negedge stageD(1,clock,r,q[0]);
tff_negedge stageC(q[0],clock,r,q[1]);
tff_negedge stageB(q[0]&q[1] ,clock,r,q[2]);
tff_negedge stageA(q[0]&q[1]&q[2],clock,r,q[3]);
endmodule


