module SLL8 (in_sll8, sel_sll8, out_sll8);
  input [31:0] in_sll8;
  input sel_sll8;
  output [31:0] out_sll8;
  
  assign out_sll8 = (sel_sll8) ? {in_sll8[23:0],8'b0} : in_sll8;
endmodule
