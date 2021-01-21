module declo24(w,y,en);
input [1:0] w;
input en;
output [3:0]y;
reg [3:0]y;

always @ (w or en)
begin
	if(en==0)
	y=15;
	
	else
	begin
		case(w)
		0:y=14;
		1:y=13;
		2:y=11;
		3:y=7;
		endcase
	end
end
endmodule

module lab8q3(w,y,en);
input [3:0]w;
input en;
output [15:0]y;
wire [3:0]i;

declo24 stageSelect(w[3:2],i,en);
declo24 stage0(w[1:0],y[3:0],  ~i[0]);
declo24 stage1(w[1:0],y[7:4],  ~i[1]);
declo24 stage2(w[1:0],y[11:8], ~i[2]);
declo24 stage3(w[1:0],y[15:12],~i[3]);	
endmodule
