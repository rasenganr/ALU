module Less (R, A, B, O, out);
  input R, A, B, O;
  output out;
  
  wire out_not0, out_not1, out_not2, out_not3, out_not4, out_and0, out_and1, out_and2, out_and3, out_or0;
  
  not not0(out_not0, B);
  not not1(out_not1, R);
  not not2(out_not2, A);
  not not3(out_not3, B);
  not not4(out_not4, O);
  and and0(out_and0, A, out_not0);
  and and1(out_and1, out_not1, A, B);
  and and2(out_and2, R, out_not2, out_not3);
  and and3(out_and3, out_or0, out_not4);
  or or0(out_or0, out_and1, out_and2);
  or or1(out, out_and0, out_and3);
endmodule
