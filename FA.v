module FA(in1_fa, in2_fa, cin_fa, cout_fa, out_fa);
  input in1_fa, in2_fa, cin_fa;
  output cout_fa, out_fa;
  
  wire out_xor0, out_and0, out_and1;
  
  and and0(out_and0, out_xor0, cin_fa);
  and and1(out_and1, in1_fa, in2_fa);
  xor xor0(out_xor0, in1_fa, in2_fa);
  xor xor1(out_fa, out_xor0, cin_fa);
  or or0(cout_fa, out_and0, out_and1);

endmodule
