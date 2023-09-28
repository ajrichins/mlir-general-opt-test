"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operation"(%0) {attributeValueNames = [], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 0, 1>} : (!pdl.type) -> !pdl.operation
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.result"(%1) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %4 = "pdl.operation"(%2, %3, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %5 = "pdl.result"(%4) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %6 = "pdl.operation"(%5, %3, %0) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%6) ({
      "pdl.replace"(%6, %2) {operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.operation, !pdl.value) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 2 : i16, sym_name = "opt0"} : () -> ()
}) : () -> ()

