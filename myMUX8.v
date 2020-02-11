module myMUX8 (in0_mux8, in1_mux8, sel_mux8, out_mux8);
  input [7:0] in0_mux8, in1_mux8;
  input sel_mux8;
  output [7:0] out_mux8;
  
  assign out_mux8 = sel_mux8 ? in1_mux8 : in0_mux8;
endmodule
