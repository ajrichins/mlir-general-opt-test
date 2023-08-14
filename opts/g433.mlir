"builtin.module"() ({
  "pdl.pattern"()  ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.type"() : () -> !pdl.type
    %2 = "pdl.operand"() : () -> !pdl.value
    %3 = "pdl.operation"(%2, %0) {attributeValueNames = [], opName = "arith.trunci", operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.value, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%4, %1) {attributeValueNames = [], opName = "arith.trunci", operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%5)  ({
      %6 = "pdl.operation"(%2, %1) {attributeValueNames = [], opName = "arith.trunci", operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%5, %6) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
      //"pdl.erase"(%3) : (!pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>}: (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt433"}: () -> ()
}) : () -> ()

