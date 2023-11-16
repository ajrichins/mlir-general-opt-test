"builtin.module"() ({
  "pdl.pattern"() <{benefit = 2 : i16, sym_name = "opt0"}> ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operation"(%0) <{attributeValueNames = [], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 0, 1>}> : (!pdl.type) -> !pdl.operation
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.result"(%1) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %4 = "pdl.operation"(%2, %3, %0) <{attributeValueNames = [], opName = "arith.addi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %5 = "pdl.result"(%4) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %6 = "pdl.operation"(%5, %3, %0) <{attributeValueNames = [], opName = "arith.subi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      "pdl.replace"(%6, %2) <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.operation, !pdl.value) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
  "pdl.pattern"() <{benefit = 2 : i16, sym_name = "opt0_com_1"}> ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operation"(%0) <{attributeValueNames = [], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 0, 1>}> : (!pdl.type) -> !pdl.operation
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.result"(%1) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %4 = "pdl.operation"(%3, %2, %0) <{attributeValueNames = [], opName = "arith.addi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %5 = "pdl.result"(%4) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %6 = "pdl.operation"(%5, %3, %0) <{attributeValueNames = [], opName = "arith.subi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      "pdl.replace"(%6, %2) <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.operation, !pdl.value) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
}) : () -> ()

