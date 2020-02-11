module RCA8 (in1_rca8, in2_rca8, cin_rca8, cout_rca8, out_rca8);
  input [7:0] in1_rca8, in2_rca8;
  input cin_rca8;
  output [7:0] out_rca8;
  output cout_rca8;
  
  wire [6:0] carry_rca8;
  
  FA d0 (.in1_fa(in1_rca8[0]), .in2_fa(in2_rca8[0]), .cin_fa(cin_rca8), .cout_fa(carry_rca8[0]), .out_fa(out_rca8[0]));
  FA d1 (.in1_fa(in1_rca8[1]), .in2_fa(in2_rca8[1]), .cin_fa(carry_rca8[0]), .cout_fa(carry_rca8[1]), .out_fa(out_rca8[1]));
  FA d2 (.in1_fa(in1_rca8[2]), .in2_fa(in2_rca8[2]), .cin_fa(carry_rca8[1]), .cout_fa(carry_rca8[2]), .out_fa(out_rca8[2]));
  FA d3 (.in1_fa(in1_rca8[3]), .in2_fa(in2_rca8[3]), .cin_fa(carry_rca8[2]), .cout_fa(carry_rca8[3]), .out_fa(out_rca8[3]));
  FA d4 (.in1_fa(in1_rca8[4]), .in2_fa(in2_rca8[4]), .cin_fa(carry_rca8[3]), .cout_fa(carry_rca8[4]), .out_fa(out_rca8[4]));
  FA d5 (.in1_fa(in1_rca8[5]), .in2_fa(in2_rca8[5]), .cin_fa(carry_rca8[4]), .cout_fa(carry_rca8[5]), .out_fa(out_rca8[5]));
  FA d6 (.in1_fa(in1_rca8[6]), .in2_fa(in2_rca8[6]), .cin_fa(carry_rca8[5]), .cout_fa(carry_rca8[6]), .out_fa(out_rca8[6]));
  FA d7 (.in1_fa(in1_rca8[7]), .in2_fa(in2_rca8[7]), .cin_fa(carry_rca8[6]), .cout_fa(cout_rca8), .out_fa(out_rca8[7]));
endmodule
