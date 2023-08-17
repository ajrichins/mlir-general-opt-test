"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() {constantType = i16} : () -> !pdl.type
    %1 = "pdl.operation"(%0) {attributeValueNames = [], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 0, 1>} : (!pdl.type) -> !pdl.operation
    %2 = "pdl.operand"() : () -> !pdl.value
    %3 = "pdl.operation"(%0) {attributeValueNames = [], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 0, 1>} : (!pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%2, %4, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.result"(%1) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %7 = "pdl.result"(%5) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %8 = "pdl.operation"(%6, %7, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%8) ({
      %9 = "pdl.operation"(%6, %4, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
      %10 = "pdl.result"(%9) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
      %11 = "pdl.operation"(%2, %10, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%8, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 0 : i16, sym_name = "opt0"} : () -> ()
}) : () -> ()

