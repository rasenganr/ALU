module AddSub (in1_addsub, in2_addsub, addsub_addsub, cout_addsub, out_addsub, ovf_addsub);
  input [31:0] in1_addsub, in2_addsub;
  input addsub_addsub;
  output [31:0] out_addsub;
  output cout_addsub, ovf_addsub;
  
  wire [31:0] out_comp;
  
  CSA32 adder0(.in1_csa32(in1_addsub), .in2_csa32(out_comp), .cin_csa32(1'b0), .cout_csa32(cout_addsub), .out_csa32(out_addsub));
  Comp comp0(.in_comp(in2_addsub), .addsub_comp(addsub_addsub), .out_comp(out_comp));
  OVF ovf0(.in1_ovf(in1_addsub[31]), .in2_ovf(out_comp[31]), .result_ovf(out_addsub[31]), .out_ovf(ovf_addsub));
endmodule
