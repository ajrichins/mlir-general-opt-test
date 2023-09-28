"builtin.module"() ({
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.attribute"() {value = -1 : i64} : () -> !pdl.attribute
    %3 = "pdl.operation"(%2, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.xori", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %7 = "pdl.operation"(%6, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%5) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %10 = "pdl.operation"(%8, %9, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%10) ({
      %11 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.muli", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%10, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0"} : () -> ()
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.attribute"() {value = -1 : i64} : () -> !pdl.attribute
    %3 = "pdl.operation"(%2, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%4, %1, %0) {attributeValueNames = [], opName = "arith.xori", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %7 = "pdl.operation"(%6, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%5) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %10 = "pdl.operation"(%8, %9, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%10) ({
      %11 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.muli", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%10, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0_com_1"} : () -> ()
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.attribute"() {value = -1 : i64} : () -> !pdl.attribute
    %3 = "pdl.operation"(%2, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.xori", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %7 = "pdl.operation"(%6, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%5) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %10 = "pdl.operation"(%9, %8, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%10) ({
      %11 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.muli", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%10, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0_com_2"} : () -> ()
  "pdl.pattern"() ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.attribute"() {value = -1 : i64} : () -> !pdl.attribute
    %3 = "pdl.operation"(%2, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%4, %1, %0) {attributeValueNames = [], opName = "arith.xori", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.attribute"() {value = 1 : i64} : () -> !pdl.attribute
    %7 = "pdl.operation"(%6, %0) {attributeValueNames = ["value"], opName = "arith.constant", operand_segment_sizes = array<i32: 0, 1, 1>} : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.result"(%5) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %9 = "pdl.result"(%7) {index = 0 : i32} : (!pdl.operation) -> !pdl.value
    %10 = "pdl.operation"(%9, %8, %0) {attributeValueNames = [], opName = "arith.addi", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%10) ({
      %11 = "pdl.operation"(%1, %4, %0) {attributeValueNames = [], opName = "arith.muli", operand_segment_sizes = array<i32: 2, 0, 1>} : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%10, %11) {operand_segment_sizes = array<i32: 1, 1, 0>} : (!pdl.operation, !pdl.operation) -> ()
    }) {operand_segment_sizes = array<i32: 1, 0>} : (!pdl.operation) -> ()
  }) {benefit = 1 : i16, sym_name = "opt0_com_3"} : () -> ()
}) : () -> ()

