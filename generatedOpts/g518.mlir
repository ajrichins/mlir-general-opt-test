"builtin.module"() ({
  "pdl.pattern"() <{benefit = 2 : i16, sym_name = "opt0"}> ({
    %0 = "pdl.type"() : () -> !pdl.type
    %1 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %2 = "pdl.operand"(%0) : (!pdl.type) -> !pdl.value
    %3 = "pdl.operation"(%1, %2, %0) <{attributeValueNames = [], opName = "arith.subi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    %4 = "pdl.result"(%3) <{index = 0 : i32}> : (!pdl.operation) -> !pdl.value
    %5 = "pdl.operation"(%1, %4, %0) <{attributeValueNames = [], opName = "arith.subi", operandSegmentSizes = array<i32: 2, 0, 1>}> : (!pdl.value, !pdl.value, !pdl.type) -> !pdl.operation
    "pdl.rewrite"(%5) <{operandSegmentSizes = array<i32: 1, 0>}> ({
      "pdl.replace"(%5, %2) <{operandSegmentSizes = array<i32: 1, 0, 1>}> : (!pdl.operation, !pdl.value) -> ()
    }) : (!pdl.operation) -> ()
  }) : () -> ()
}) : () -> ()

