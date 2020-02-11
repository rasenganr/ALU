module SRA (in_sra, amt_sra, out_sra);
  input [31:0] in_sra;
  input [4:0] amt_sra;
  output [31:0] out_sra;
  
  wire [31:0] out_sra16, out_sra8, out_sra4, out_sra2, out_sra1;
  
  SRA16 sra16(.in_sra16(in_sra), .sel_sra16(amt_sra[4]), .out_sra16(out_sra16));
  SRA8 sra8(.in_sra8(out_sra16), .sel_sra8(amt_sra[3]), .out_sra8(out_sra8));
  SRA4 sra4(.in_sra4(out_sra8), .sel_sra4(amt_sra[2]), .out_sra4(out_sra4));
  SRA2 sra2(.in_sra2(out_sra4), .sel_sra2(amt_sra[1]), .out_sra2(out_sra2));
  SRA1 sra1(.in_sra1(out_sra2), .sel_sra1(amt_sra[0]), .out_sra1(out_sra));
endmodule
