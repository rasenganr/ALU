module SLL2 (in_sll2, sel_sll2, out_sll2);
  input [31:0] in_sll2;
  input sel_sll2;
  output [31:0] out_sll2;
  
  assign out_sll2 = (sel_sll2) ? {in_sll2[29:0],2'b0} : in_sll2;
endmodule
