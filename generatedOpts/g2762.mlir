"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operation"(%0) {attributeValueNames = [], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 0, 1>} : (!pdl.type) -> !pdl.operation
    %3 = "pdl.type"() {constantType = i1} : () -> !pdl.type
    %4 = "pdl.result"(%2) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %6 = "pdl.operation"(%1, %4, %5, %3) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    %7 = "pdl.operation"(%5, %3) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%6) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %10 = "pdl.operation"(%8, %9, %3) {attributeValueNames = [], opName = "arith.xori", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%10) ({
      %11 = "pdl.operation"(%1, %4, %5, %3) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
      "pdl.replace"(%10, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0"} : () -> ()
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operation"(%0) {attributeValueNames = [], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 0, 1>} : (!pdl.type) -> !pdl.operation
    %3 = "pdl.type"() {constantType = i1} : () -> !pdl.type
    %4 = "pdl.result"(%2) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %6 = "pdl.operation"(%4, %1, %5, %3) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    %7 = "pdl.operation"(%5, %3) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%6) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %10 = "pdl.operation"(%8, %9, %3) {attributeValueNames = [], opName = "arith.xori", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%10) ({
      %11 = "pdl.operation"(%1, %4, %5, %3) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
      "pdl.replace"(%10, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0_com_1"} : () -> ()
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operation"(%0) {attributeValueNames = [], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 0, 1>} : (!pdl.type) -> !pdl.operation
    %3 = "pdl.type"() {constantType = i1} : () -> !pdl.type
    %4 = "pdl.result"(%2) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %6 = "pdl.operation"(%1, %4, %5, %3) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    %7 = "pdl.operation"(%5, %3) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%6) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %10 = "pdl.operation"(%9, %8, %3) {attributeValueNames = [], opName = "arith.xori", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%10) ({
      %11 = "pdl.operation"(%1, %4, %5, %3) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
      "pdl.replace"(%10, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0_com_2"} : () -> ()
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operation"(%0) {attributeValueNames = [], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 0, 1>} : (!pdl.type) -> !pdl.operation
    %3 = "pdl.type"() {constantType = i1} : () -> !pdl.type
    %4 = "pdl.result"(%2) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %6 = "pdl.operation"(%4, %1, %5, %3) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    %7 = "pdl.operation"(%5, %3) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%6) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %10 = "pdl.operation"(%9, %8, %3) {attributeValueNames = [], opName = "arith.xori", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%10) ({
      %11 = "pdl.operation"(%1, %4, %5, %3) {attributeValueNames = ["predicate"], opName = "arith.cmpi", operand_segment_sizes = array<i32: 2, 1, 1>} : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
      "pdl.replace"(%10, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0_com_3"} : () -> ()
}) : () -> ()

