"builtin.module"() ({
  "pdl.pattern"() <{benefit = 4 : i16, sym_name = "opt0"}> ({
    %0 = "pdl.type"() <{constantType = i1}> : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.type"() : () -> !pdl.type
    %3 = "pdl.attribute"() <{value = 1 : i64}> : () -> !pdl.attribute
    %4 = "pdl.operation"(%3, %2) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %5 = "pdl.attribute"() <{value = 0 : i64}> : () -> !pdl.attribute
    %6 = "pdl.operation"(%5, %2) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %7 = "pdl.result"(%4) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %8 = "pdl.result"(%6) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %9 = "pdl.operation"(%1, %7, %8, %2) <{attributeValueNames = [], opName = "arith.select", operandSegmentSizes = array<i32: 3, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %10 = "pdl.type"() : () -> !pdl.type
    %11 = "pdl.result"(%9) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %12 = "pdl.operation"(%11, %10) <{attributeValueNames = [], opName = "arith.trunci", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
    %13 = "pdl.operation"(%3, %10) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %14 = "pdl.result"(%12) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %15 = "pdl.result"(%13) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %16 = "pdl.operation"(%14, %15, %10) <{attributeValueNames = [], opName = "arith.andi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%16) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      %17 = "pdl.operation"(%1, %10) <{attributeValueNames = [], opName = "arith.extui", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%16, %17) <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (!pdl.operation, !pdl.operation) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
  "pdl.pattern"() <{benefit = 4 : i16, sym_name = "opt0_com_1"}> ({
    %0 = "pdl.type"() <{constantType = i1}> : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.type"() : () -> !pdl.type
    %3 = "pdl.attribute"() <{value = 1 : i64}> : () -> !pdl.attribute
    %4 = "pdl.operation"(%3, %2) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %5 = "pdl.attribute"() <{value = 0 : i64}> : () -> !pdl.attribute
    %6 = "pdl.operation"(%5, %2) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %7 = "pdl.result"(%4) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %8 = "pdl.result"(%6) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %9 = "pdl.operation"(%1, %7, %8, %2) <{attributeValueNames = [], opName = "arith.select", operandSegmentSizes = array<i32: 3, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %10 = "pdl.type"() : () -> !pdl.type
    %11 = "pdl.result"(%9) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %12 = "pdl.operation"(%11, %10) <{attributeValueNames = [], opName = "arith.trunci", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
    %13 = "pdl.operation"(%3, %10) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %14 = "pdl.result"(%12) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %15 = "pdl.result"(%13) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %16 = "pdl.operation"(%15, %14, %10) <{attributeValueNames = [], opName = "arith.andi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%16) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      %17 = "pdl.operation"(%1, %10) <{attributeValueNames = [], opName = "arith.extui", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%16, %17) <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (!pdl.operation, !pdl.operation) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
}) : () -> ()

