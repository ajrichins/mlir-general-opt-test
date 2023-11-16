"builtin.module"() ({
  "pdl.pattern"() <{benefit = 1 : i16, sym_name = "opt0"}> ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.attribute"() <{value = 0 : i64}> : () -> !pdl.attribute
    %4 = "pdl.operation"(%3, %0) <{attributeValueNames = ["value"], opName = "arith.constant", operandSegmentSizes = array<i32: 0, 1, 1>}> : (!pdl.attribute, !pdl.type) -> !pdl.operation
    %5 = "pdl.operation"(%1, %2, %0) <{attributeValueNames = [], opName = "arith.subi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %6 = "pdl.result"(%4) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %7 = "pdl.result"(%5) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %8 = "pdl.operation"(%6, %7, %0) <{attributeValueNames = [], opName = "arith.subi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%8) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      %9 = "pdl.operation"(%2, %1, %0) <{attributeValueNames = [], opName = "arith.subi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%8, %9) <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (!pdl.operation, !pdl.operation) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
}) : () -> ()

