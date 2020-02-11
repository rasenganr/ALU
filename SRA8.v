module SRA8 (in_sra8, sel_sra8, out_sra8);
  input [31:0] in_sra8;
  input sel_sra8;
  output [31:0] out_sra8;
  
  assign out_sra8 = (sel_sra8) ? {in_sra8[31], in_sra8[31], in_sra8[31], in_sra8[31], in_sra8[31], in_sra8[31], in_sra8[31], in_sra8[31], in_sra8[31:8]} : in_sra8;
endmodule
