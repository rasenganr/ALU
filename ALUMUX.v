module ALUMUX (addsub_am, and_am, or_am, sll_am, sra_am, sel_am, out_am);
  input [31:0] addsub_am, and_am, or_am, sll_am, sra_am;
  input [4:0] sel_am;
  output [31:0] out_am;
  
  wire [31:0] out_0_0, out_0_1, out_1_0, out_1_1;
  
  myMUX32 mux0_0(.in0_mux32(and_am), .in1_mux32(or_am), .sel_mux32(sel_am[0]), .out_mux32(out_0_0));
  myMUX32 mux0_1(.in0_mux32(sll_am), .in1_mux32(sra_am), .sel_mux32(sel_am[0]), .out_mux32(out_0_1));
  myMUX32 mux1_0(.in0_mux32(addsub_am), .in1_mux32(out_0_0), .sel_mux32(sel_am[1]), .out_mux32(out_1_0));
  myMUX32 mux1_1(.in0_mux32(out_0_1), .in1_mux32(32'b0), .sel_mux32(sel_am[1]), .out_mux32(out_1_1));
  myMUX32 mux2_0(.in0_mux32(out_1_0), .in1_mux32(out_1_1), .sel_mux32(sel_am[2]), .out_mux32(out_am));
endmodule
