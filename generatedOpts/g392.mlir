"builtin.module"() ({
  "pdl.pattern"() <{benefit = 1 : i16, sym_name = "opt0"}> ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.type"() : () -> !pdl.type
    %3 = "pdl.operation"(%1, %2) <{attributeValueNames = [], opName = "arith.extsi", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
    %4 = "pdl.type"() : () -> !pdl.type
    %5 = "pdl.result"(%3) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %6 = "pdl.operation"(%5, %4) <{attributeValueNames = [], opName = "arith.extsi", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%6) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      %7 = "pdl.operation"(%1, %4) <{attributeValueNames = [], opName = "arith.extsi", operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.value, !pdl.type) -> !pdl.operation
      "pdl.replace"(%6, %7) <{operandSegmentSizes = array<i32: 1, 1, 0>}> : (!pdl.operation, !pdl.operation) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
}) : () -> ()

