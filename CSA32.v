module CSA32 (in1_csa32, in2_csa32, cin_csa32, cout_csa32, out_csa32);
  input [31:0] in1_csa32, in2_csa32;
  input cin_csa32;
  output [31:0] out_csa32;
  output cout_csa32;
  
  wire carry, sel_mux, in0_mux1, in1_mux1;
  wire [15:0] in0_mux16, in1_mux16;
  
  CSA16 d_low(.in1_csa16(in1_csa32[15:0]), .in2_csa16(in2_csa32[15:0]), .cin_csa16(cin_csa32), .cout_csa16(sel_mux), .out_csa16(out_csa32[15:0]));
  CSA16 d_high0(.in1_csa16(in1_csa32[31:16]), .in2_csa16(in2_csa32[31:16]), .cin_csa16(1'b0), .cout_csa16(in0_mux1), .out_csa16(in0_mux16));
  CSA16 d_high1(.in1_csa16(in1_csa32[31:16]), .in2_csa16(in2_csa32[31:16]), .cin_csa16(1'b1), .cout_csa16(in1_mux1), .out_csa16(in1_mux16));
  myMUX1 mux1(.in0_mux1(in0_mux1), .in1_mux1(in1_mux1), .sel_mux1(sel_mux), .out_mux1(cout_csa32));
  myMUX16 mux16(.in0_mux16(in0_mux16), .in1_mux16(in1_mux16), .sel_mux16(sel_mux), .out_mux16(out_csa32[31:16]));
endmodule
