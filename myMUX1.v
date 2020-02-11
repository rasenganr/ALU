module myMUX1 (in0_mux1, in1_mux1, sel_mux1, out_mux1);
  input in0_mux1, in1_mux1, sel_mux1;
  output out_mux1;
  
  assign out_mux1 = sel_mux1 ? in1_mux1 : in0_mux1;
endmodule
