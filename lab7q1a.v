module lab7q1a(abcd,f);
input [3:0] abcd;
output f;
wire [7:0] w;
wire z=0;
wire o =1;
assign w={~abcd[0],o,z,o,o,o,z,z};
mux8 stage0(w,abcd[3:1],f);
endmodule
