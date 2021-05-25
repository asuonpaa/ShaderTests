; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 93
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %74
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %8 "a"
               OpName %12 "buf0"
               OpMemberName %12 0 "_GLF_uniform_float_values"
               OpName %14 ""
               OpName %21 "b"
               OpName %24 "c"
               OpName %28 "i"
               OpName %31 "buf1"
               OpMemberName %31 0 "_GLF_uniform_int_values"
               OpName %33 ""
               OpName %74 "_GLF_color"
               OpDecorate %11 ArrayStride 16
               OpMemberDecorate %12 0 Offset 0
               OpDecorate %12 Block
               OpDecorate %14 DescriptorSet 0
               OpDecorate %14 Binding 0
               OpDecorate %30 ArrayStride 16
               OpMemberDecorate %31 0 Offset 0
               OpDecorate %31 Block
               OpDecorate %33 DescriptorSet 0
               OpDecorate %33 Binding 1
               OpDecorate %74 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeFloat 32
          %7 = OpTypePointer Function %6
          %9 = OpTypeInt 32 0
         %10 = OpConstant %9 2
         %11 = OpTypeArray %6 %10
         %12 = OpTypeStruct %11
         %13 = OpTypePointer Uniform %12
         %14 = OpVariable %13 Uniform
         %15 = OpTypeInt 32 1
         %16 = OpConstant %15 0
         %17 = OpConstant %15 1
         %18 = OpTypePointer Uniform %6
         %27 = OpTypePointer Function %15
         %29 = OpConstant %9 3
         %30 = OpTypeArray %15 %29
         %31 = OpTypeStruct %30
         %32 = OpTypePointer Uniform %31
         %33 = OpVariable %32 Uniform
         %34 = OpTypePointer Uniform %15
         %45 = OpTypeBool
         %48 = OpConstant %15 2
         %72 = OpTypeVector %6 4
         %73 = OpTypePointer Output %72
         %74 = OpVariable %73 Output
          %4 = OpFunction %2 None %3
          %5 = OpLabel
          %8 = OpVariable %7 Function
         %21 = OpVariable %7 Function
         %24 = OpVariable %7 Function
         %28 = OpVariable %27 Function
         %19 = OpAccessChain %18 %14 %16 %17
         %20 = OpLoad %6 %19
               OpStore %8 %20
         %22 = OpAccessChain %18 %14 %16 %17
         %23 = OpLoad %6 %22
               OpStore %21 %23
         %25 = OpAccessChain %18 %14 %16 %17
         %26 = OpLoad %6 %25
               OpStore %24 %26
         %35 = OpAccessChain %34 %33 %16 %17
         %36 = OpLoad %15 %35
               OpStore %28 %36
               OpBranch %37
         %37 = OpLabel
               OpLoopMerge %39 %40 None
               OpBranch %41
         %41 = OpLabel
         %42 = OpLoad %15 %28
         %43 = OpAccessChain %34 %33 %16 %16
         %44 = OpLoad %15 %43
         %46 = OpSLessThan %45 %42 %44
               OpBranchConditional %46 %38 %39
         %38 = OpLabel
         %47 = OpLoad %15 %28
         %49 = OpAccessChain %34 %33 %16 %48
         %50 = OpLoad %15 %49
         %51 = OpIEqual %45 %47 %50
               OpSelectionMerge %53 None
               OpBranchConditional %51 %52 %53
         %52 = OpLabel
         %54 = OpLoad %6 %8
         %55 = OpDPdx %6 %54
         %56 = OpAccessChain %18 %14 %16 %17
         %57 = OpLoad %6 %56
         %58 = OpFAdd %6 %55 %57
               OpStore %21 %58
               OpBranch %53
         %53 = OpLabel
         %59 = OpLoad %6 %8
         %60 = OpDPdx %6 %59
               OpStore %24 %60
         %61 = OpLoad %6 %24
         %62 = OpLoad %6 %21
         %63 = OpFDiv %6 %61 %62
               OpStore %8 %63
               OpBranch %40
         %40 = OpLabel
         %64 = OpLoad %15 %28
         %65 = OpIAdd %15 %64 %17
               OpStore %28 %65
               OpBranch %37
         %39 = OpLabel
         %66 = OpLoad %6 %8
         %67 = OpAccessChain %18 %14 %16 %16
         %68 = OpLoad %6 %67
         %69 = OpFOrdEqual %45 %66 %68
               OpSelectionMerge %71 None
               OpBranchConditional %69 %70 %88
         %70 = OpLabel
         %75 = OpAccessChain %34 %33 %16 %48
         %76 = OpLoad %15 %75
         %77 = OpConvertSToF %6 %76
         %78 = OpAccessChain %34 %33 %16 %17
         %79 = OpLoad %15 %78
         %80 = OpConvertSToF %6 %79
         %81 = OpAccessChain %34 %33 %16 %17
         %82 = OpLoad %15 %81
         %83 = OpConvertSToF %6 %82
         %84 = OpAccessChain %34 %33 %16 %48
         %85 = OpLoad %15 %84
         %86 = OpConvertSToF %6 %85
         %87 = OpCompositeConstruct %72 %77 %80 %83 %86
               OpStore %74 %87
               OpBranch %71
         %88 = OpLabel
         %89 = OpAccessChain %34 %33 %16 %17
         %90 = OpLoad %15 %89
         %91 = OpConvertSToF %6 %90
         %92 = OpCompositeConstruct %72 %91 %91 %91 %91
               OpStore %74 %92
               OpBranch %71
         %71 = OpLabel
               OpReturn
               OpFunctionEnd
