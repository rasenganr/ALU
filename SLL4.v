module SLL4 (in_sll4, sel_sll4, out_sll4);
  input [31:0] in_sll4;
  input sel_sll4;
  output [31:0] out_sll4;
  
  assign out_sll4 = (sel_sll4) ? {in_sll4[27:0],4'b0} : in_sll4;
endmodule
