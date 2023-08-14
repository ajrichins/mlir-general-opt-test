"builtin.module"() ({
  "pdl.pattern"()  ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.type"() {constantType = i1} : () -> !pdl.type
    %2 = "pdl.operand"() : () -> !pdl.value
    %3 = "pdl.attribute"() {value = 2 : i32} : () -> !pdl.attribute
    %4 = "pdl.operation"(%3, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %5 = "pdl.result"(%4) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %6 = "pdl.attribute"() {value = 0 : i32} : () -> !pdl.attribute
    %7 = "pdl.operation"(%6, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.operation"(%2, %5, %0) {attributeValueNames = [], opName = "arith.remsi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %10 = "pdl.result"(%9) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %11 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %12 = "pdl.operation"(%10, %8, %11, %1) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%12) ({
      %13 = "pdl.operation"(%2, %0) {attributeValueNames = [], opName = "arith.trunci", operand_segment_sizes = array<i32: 1, 0, 1>} : (!pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%12, %13) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt606"}: () -> ()
}) : () -> ()

