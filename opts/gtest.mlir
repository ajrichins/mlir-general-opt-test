"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operation"(%0) {attributeValueNames = [], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 0, 1>} : (!pdl.type) -> !pdl.operation
    "pdl.rewrite"(%1) ({
      %2 = "pdl.attribute"() {value = 0 : i64} : () -> !pdl.attribute
      %3 = "pdl.operation"(%2, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
      "pdl.replace"(%1, %3) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 2 : i16, sym_name = "opt0"} : () -> ()
}) : () -> ()

