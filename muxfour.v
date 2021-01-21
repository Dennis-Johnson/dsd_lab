module muxfour(w,s,r);
input [3:0]w;
input [1:0]s;
output r;
wire [2:0]f;
twobitmux m0(w[1:0],s[0],f[0]);
twobitmux m1(w[3:2],s[0],f[1]);
twobitmux m2(f[1:0],s[1],f[2]);
assign r = f[2];
endmodule

module twobitmux(w,s,f);
input [1:0] w;
input s;
output f;
function mux;
	input [1:0]x;
	input ss;
	if(ss==0)
	mux=x[0];
	else 
	mux=x[1];
endfunction

assign f = mux(w,s);
endmodule	
