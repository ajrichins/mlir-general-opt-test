builtin.module {
  func.func @test_kb_apc_base() -> i32 {
    %c0 = "arith.constant"() {value = 12 : i32, kb="????"} : () -> i32
    func.return %c0 : i32
  }
  func.func @test_kb_apc_false_kb() -> i32 {
    %c0 = "arith.constant"() {value = 12 : i32, kb="??"} : () -> i32
    func.return %c0 : i32
  }
  func.func @test_kb_apc_false_name() -> i32 {
    %c0 = "arith.constant"() {value = 12 : i32, bk="????"} : () -> i32
    func.return %c0 : i32
  }
  func.func @test_kb_apc_no_kb() -> i32 {
    %c0 = "arith.constant"() {value = 12 : i32} : () -> i32
    func.return %c0 : i32
  }
}