"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.operand"() : () -> !pdl.value
    %1 = "pdl.operand"() : () -> !pdl.value
    %2 = "pdl.attribute"() {value = 0 : i32} : () -> !pdl.attribute
    %3 = "pdl.type"() {constantType = i32} : () -> !pdl.type
    %4 = "pdl.operation"(%2, %3) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %5 = "pdl.operation"(%0, %1, %3) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.result"(%4) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %7 = "pdl.result"(%5) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %8 = "pdl.operation"(%6, %7, %3) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%8) ({
      %9 = "pdl.operation"(%1, %0, %3) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%8, %9) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0"} : () -> ()
}) : () -> ()

