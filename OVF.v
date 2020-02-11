module OVF (in1_ovf, in2_ovf, result_ovf, out_ovf);
  input in1_ovf, in2_ovf, result_ovf;
  output out_ovf;
  
  wire out_not0, out_not1, out_not2, out_and0, out_and1, out_and2, out_and3;
  
  not not0(out_not0, in1_ovf);
  not not1(out_not1, in2_ovf);
  not not2(out_not2, result_ovf);
  and and0(out_and0, result_ovf, out_not0);
  and and1(out_and1, out_and0, out_not1);
  and and2(out_and2, out_not2,in1_ovf);
  and and3(out_and3, out_and2, in2_ovf);
  or or0(out_ovf, out_and1, out_and3);
endmodule
