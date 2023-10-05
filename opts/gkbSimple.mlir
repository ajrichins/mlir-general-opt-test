"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.attribute"() {value = "????"} : () -> !pdl.attribute
    %4 = "pdl.operation"(%1, %2, %3, %0) {attributeValueNames = ["kb"], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%4) ({
      %5 = "pdl.attribute"() {value = 2 : i64} : () -> !pdl.attribute
      %6 = "pdl.operation"(%5, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
      "pdl.replace"(%4, %6) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0"} : () -> ()
}) : () -> ()

