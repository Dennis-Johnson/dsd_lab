module lab7majority2(x1,x2,x3,f);
input x1,x2,x3;
output f;
wire g,h;
muxtwo stageG(0,x3,x2,g);
muxtwo stageH(x3,1,x2,h);
muxtwo stageF(g,h,x1,f);
endmodule
