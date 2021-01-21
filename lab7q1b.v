module lab7q1b(a,b,c,d,f);
input a,b,c,d;
output f;
wire z;
wire [3:0]w;
wire [1:0]s;
assign z = ~d|c;
assign s = {a,b};

assign w={1'b0,1'b0,d,z};
muxfour result(w,s,f);
endmodule
