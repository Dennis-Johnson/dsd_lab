module ring4bit(clock,q);
input clock;
output [3:0]q;
wire o = 0;
wire en = 1;
wire [1:0]s;

dff_posedge stage0(~s[0],clock,o,s[0]);
dff_posedge stage1(s[0]^s[1],clock,o,s[1]);

decoderr result(s,q,clock);
endmodule

module decoderr(in,out,e);
input e;
input [1:0]in;
output [3:0]out;
reg [3:0] out;

always @ (posedge e)
begin
case(in)
0:out=1;
1:out=2;
2:out=4;
3:out=8;
endcase
end
endmodule
