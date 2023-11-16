"builtin.module"() ({
  "pdl.pattern"() <{benefit = 5 : i16, sym_name = "opt0"}> ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.attribute"() <{value = 2 : i64}> : () -> !pdl.attribute
    %3 = "pdl.operation"(%2, %0) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%1, %4, %0) <{attributeValueNames = [], opName = "arith.remsi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.attribute"() <{value = 0 : i64}> : () -> !pdl.attribute
    %7 = "pdl.operation"(%6, %0) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.type"() <{constantType = i1}> : () -> !pdl.type
    %9 = "pdl.result"(%5) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %10 = "pdl.result"(%7) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %11 = "pdl.attribute"() <{value = 1 : i64}> : () -> !pdl.attribute
    %12 = "pdl.operation"(%9, %10, %11, %8) <{attributeValueNames = ["predicate"], opName = "arith.cmpi", operandSegmentSizes = array<i32: 2, 1, 1>}> : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%12) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      %13 = "pdl.operation"(%1, %8) <{attributeValueNames = [], opName = "arith.trunci", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%12, %13) <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (!pdl.operation, !pdl.operation) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
  "pdl.pattern"() <{benefit = 5 : i16, sym_name = "opt0_com_1"}> ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.attribute"() <{value = 2 : i64}> : () -> !pdl.attribute
    %3 = "pdl.operation"(%2, %0) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%1, %4, %0) <{attributeValueNames = [], opName = "arith.remsi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.attribute"() <{value = 0 : i64}> : () -> !pdl.attribute
    %7 = "pdl.operation"(%6, %0) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %8 = "pdl.type"() <{constantType = i1}> : () -> !pdl.type
    %9 = "pdl.result"(%5) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %10 = "pdl.result"(%7) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %11 = "pdl.attribute"() <{value = 1 : i64}> : () -> !pdl.attribute
    %12 = "pdl.operation"(%10, %9, %11, %8) <{attributeValueNames = ["predicate"], opName = "arith.cmpi", operandSegmentSizes = array<i32: 2, 1, 1>}> : (!pdl.value, !pdl.value, !pdl.attribute, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%12) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      %13 = "pdl.operation"(%1, %8) <{attributeValueNames = [], opName = "arith.trunci", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%12, %13) <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (!pdl.operation, !pdl.operation) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
}) : () -> ()

