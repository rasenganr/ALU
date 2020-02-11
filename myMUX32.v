module myMUX32 (in0_mux32, in1_mux32, sel_mux32, out_mux32);
  input [31:0] in0_mux32, in1_mux32;
  input sel_mux32;
  output [31:0] out_mux32;
  
  assign out_mux32 = sel_mux32 ? in1_mux32 : in0_mux32;
endmodule
