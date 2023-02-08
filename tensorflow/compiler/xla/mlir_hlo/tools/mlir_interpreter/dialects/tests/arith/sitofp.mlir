// RUN: mlir-interpreter-runner %s -run-all | FileCheck %s

func.func @i16() -> f32 {
  %c-1 = arith.constant -1 : i16
  %r = arith.sitofp %c-1 : i16 to f32
  return %r : f32
}

// CHECK-LABEL: @i16
// CHECK-NEXT: Results
// CHECK-NEXT{LITERAL}: -1.000000e+00

func.func @i1() -> f64 {
  %true = arith.constant true
  %r = arith.sitofp %true : i1 to f64
  return %r : f64
}

// CHECK-LABEL: @i1
// CHECK-NEXT: Results
// CHECK-NEXT{LITERAL}: 1.000000e+00