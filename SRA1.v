module SRA1 (in_sra1, sel_sra1, out_sra1);
  input [31:0] in_sra1;
  input sel_sra1;
  output [31:0] out_sra1;
  
  assign out_sra1 = (sel_sra1) ? {in_sra1[31], in_sra1[31:1]} : in_sra1;
endmodule
