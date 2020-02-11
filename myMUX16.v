module myMUX16 (in0_mux16, in1_mux16, sel_mux16, out_mux16);
  input [15:0] in0_mux16, in1_mux16;
  input sel_mux16;
  output [15:0] out_mux16;
  
  assign out_mux16 = sel_mux16 ? in1_mux16 : in0_mux16;
endmodule
