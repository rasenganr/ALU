module SLL1 (in_sll1, sel_sll1, out_sll1);
  input [31:0] in_sll1;
  input sel_sll1;
  output [31:0] out_sll1;
  
  assign out_sll1 = (sel_sll1) ? {in_sll1[30:0],1'b0} : in_sll1;
endmodule
