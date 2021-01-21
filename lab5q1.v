module lab5q1(x,y,xeqy,xgty,xlty);

input [4:0] x,y;
output xeqy,xgty,xlty;
wire i4,i3,i2,i1;

assign i4 = ~(x[4] ^ y[4]);
assign i3 = ~(x[3] ^ y[3]);
assign i2 = ~(x[2] ^ y[2]);
assign i1 = ~(x[1] ^ y[1]);

assign xeqy = i4 & i3 & i2 & i1;
assign xgty = (x[4]& ~y[4]) | (i4 & x[3] & ~y[3]) | (i4 & i3 & x[2] & ~y[2]) | (i4 &i3 &i2 & x[1] & ~y[1]) | (i4 &i3 &i2 &i1 & x[0] & ~y[0]);
assign xlty = ~(xgty|xeqy);

endmodule
                                                                                                                                                                               
