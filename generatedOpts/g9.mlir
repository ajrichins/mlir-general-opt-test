"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.operation"(%2, %1, %0) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%5) ({
      "pdl.replace"(%5, %2) {operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.operation, !pdl.value) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 2 : i16, sym_name = "opt0"} : () -> ()
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.operation"(%2, %1, %0) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%4, %1, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%5) ({
      "pdl.replace"(%5, %2) {operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.operation, !pdl.value) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 2 : i16, sym_name = "opt0_com_1"} : () -> ()
}) : () -> ()

