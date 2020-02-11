module CSA16 (in1_csa16, in2_csa16, cin_csa16, cout_csa16, out_csa16);
  input [15:0] in1_csa16, in2_csa16;
  input cin_csa16;
  output [15:0] out_csa16;
  output cout_csa16;
  
  wire carry, sel_mux, in0_mux1, in1_mux1;
  wire [7:0] in0_mux8, in1_mux8;
  
  RCA8 d_low(.in1_rca8(in1_csa16[7:0]), .in2_rca8(in2_csa16[7:0]), .cin_rca8(cin_csa16), .cout_rca8(sel_mux), .out_rca8(out_csa16[7:0]));
  RCA8 d_high0(.in1_rca8(in1_csa16[15:8]), .in2_rca8(in2_csa16[15:8]), .cin_rca8(1'b0), .cout_rca8(in0_mux1), .out_rca8(in0_mux8));
  RCA8 d_high1(.in1_rca8(in1_csa16[15:8]), .in2_rca8(in2_csa16[15:8]), .cin_rca8(1'b1), .cout_rca8(in1_mux1), .out_rca8(in1_mux8));
  myMUX1 mux1(.in0_mux1(in0_mux1), .in1_mux1(in1_mux1), .sel_mux1(sel_mux), .out_mux1(cout_csa16));
  myMUX8 mux8(.in0_mux8(in0_mux8), .in1_mux8(in1_mux8), .sel_mux8(sel_mux), .out_mux8(out_csa16[15:8]));
endmodule
