module Comp (in_comp, addsub_comp, out_comp);
  input [31:0] in_comp;
  input addsub_comp;
  output [31:0] out_comp;
  
  wire [31:0] out_not, out_csa;
  
  myNOT not0(.in_not(in_comp), .out_not(out_not));
  myMUX32 mux0(.in0_mux32(in_comp), .in1_mux32(out_csa), .sel_mux32(addsub_comp), .out_mux32(out_comp));
  CSA32 csa0(.in1_csa32(out_not), .in2_csa32(32'b1), .cin_csa32(1'b0), .cout_csa32(), .out_csa32(out_csa));
endmodule
