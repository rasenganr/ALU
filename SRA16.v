module SRA16 (in_sra16, sel_sra16, out_sra16);
  input [31:0] in_sra16;
  input sel_sra16;
  output [31:0] out_sra16;
  
  assign out_sra16 = (sel_sra16) ? {in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31], in_sra16[31:16]} : in_sra16;
endmodule
