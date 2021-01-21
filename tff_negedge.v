module tff_negedge(t,clock,reset,q);
input t,clock,reset;
output q;
reg q;
always @ (negedge clock or negedge reset)
begin
	if(t)
	q=!q;
	if(!reset)
	q=0;
end
endmodule
