module SLL16 (in_sll16, sel_sll16, out_sll16);
  input [31:0] in_sll16;
  input sel_sll16;
  output [31:0] out_sll16;
  
  assign out_sll16 = (sel_sll16) ? {in_sll16[15:0],16'b0} : in_sll16;
endmodule
