module SLL(in_sll, amt_sll, out_sll);
  input [31:0] in_sll;
  input [4:0] amt_sll;
  output [31:0] out_sll;
  
  wire [31:0] out_sll16, out_sll8, out_sll4, out_sll2;
  
  SLL16 sll16(.in_sll16(in_sll), .sel_sll16(amt_sll[4]), .out_sll16(out_sll16));
  SLL8 sll8(.in_sll8(out_sll16), .sel_sll8(amt_sll[3]), .out_sll8(out_sll8));
  SLL4 sll4(.in_sll4(out_sll8), .sel_sll4(amt_sll[2]), .out_sll4(out_sll4));
  SLL2 sll2(.in_sll2(out_sll4), .sel_sll2(amt_sll[1]), .out_sll2(out_sll2));
  SLL1 sll1(.in_sll1(out_sll2), .sel_sll1(amt_sll[0]), .out_sll1(out_sll));
  
endmodule