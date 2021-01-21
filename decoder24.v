module decoder24(w,y,en);
input [1:0] w;
input en;
output [3:0] y;
reg [3:0] y;

always @ (w or en)
if(en==0)
y=0;
else
	begin
		if(w==0)
			y=1;
		else if(w==1)
			y=2;
		else if(w==2)
			y=4;
		else 
			y=8;
	end
endmodule
