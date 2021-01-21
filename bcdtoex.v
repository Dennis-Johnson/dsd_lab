module bcdtoex(bcd,ex);
input [3:0] bcd;
output[3:0] ex;
wire [7:0] w,x,y,z;
wire [2:0] s;

assign w = {1'b0,1'b0,bcd[0],1'b1,1'b1,1'b0,1'b0,1'b0};
assign x = {bcd[0],1'b1,~bcd[0],1'b0,bcd[0],1'b0,1'b0,1'b0};
assign y = {~bcd[0],bcd[0],~bcd[0],bcd[0],~bcd[0],1'b0,1'b0,1'b0};
assign z = {~bcd[0],~bcd[0],~bcd[0],~bcd[0],~bcd[0],1'b0,1'b0,1'b0};
assign s = {bcd[3],bcd[2],bcd[1]};

mux8 stagew(w,s,ex[3]);
mux8 stagex(x,s,ex[2]);
mux8 stagey(y,s,ex[1]);
mux8 stagez(z,s,ex[0]);

endmodule

