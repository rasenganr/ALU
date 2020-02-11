module SRA4 (in_sra4, sel_sra4, out_sra4);
  input [31:0] in_sra4;
  input sel_sra4;
  output [31:0] out_sra4;
  
  assign out_sra4 = (sel_sra4) ? {in_sra4[31], in_sra4[31], in_sra4[31], in_sra4[31], in_sra4[31:4]} : in_sra4;
endmodule
