module alu (data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);
  input [31:0] data_operandA, data_operandB;
  input [4:0] ctrl_ALUopcode, ctrl_shiftamt;
  output [31:0] data_result;
  output isNotEqual, isLessThan, overflow;
  
  wire [31:0] addsub_result, and_result, or_result, sll_result, sra_result;
  
  AddSub addsub0(.in1_addsub(data_operandA), .in2_addsub(data_operandB), .addsub_addsub(ctrl_ALUopcode[0]), .cout_addsub(), .out_addsub(addsub_result), .ovf_addsub(overflow));
  myAND myand0(.in1_and(data_operandA), .in2_and(data_operandB), .out_and(and_result));
  myOR myor0(.in1_or(data_operandA), .in2_or(data_operandB), .out_or(or_result));
  SLL sll0(.in_sll(data_operandA), .amt_sll(ctrl_shiftamt), .out_sll(sll_result));
  SRA sra0(.in_sra(data_operandA), .amt_sra(ctrl_shiftamt), .out_sra(sra_result));
  ALUMUX alumux0(.addsub_am(addsub_result), .and_am(and_result), .or_am(or_result), .sll_am(sll_result), .sra_am(sra_result), .sel_am(ctrl_ALUopcode), .out_am(data_result));
  Equal equal0(.in_equal(data_result), .out_equal(isNotEqual));
  Less less0(.R(data_result[31]), .A(data_operandA[31]), .B(data_operandB[31]), .O(overflow), .out(isLessThan));
endmodule
