module jkff_posedge(jk,clock,reset,q);
input [1:0]jk;
input clock,reset;
output q;
reg q;
always @ (posedge clock)
begin
if(jk==1)
q=0;
else if(jk==2)
q=1;
else if(jk==3)
q=!q;

if(reset)
q=0;
end
endmodule



