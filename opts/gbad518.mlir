"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() {constantType = i64} : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.attribute"() {value = 10 : i64} : () -> !pdl.attribute
    %3 = "pdl.operation"(%2, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.subi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%5) ({
      "pdl.replace"(%5, %4) {operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.operation, !pdl.value) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 100 : i16, sym_name = "opt0"} : () -> ()
}) : () -> ()

