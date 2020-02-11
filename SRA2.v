module SRA2 (in_sra2, sel_sra2, out_sra2);
  input [31:0] in_sra2;
  input sel_sra2;
  output [31:0] out_sra2;
  
  assign out_sra2 = (sel_sra2) ? {in_sra2[31], in_sra2[31], in_sra2[31:2]} : in_sra2;
endmodule
