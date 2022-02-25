; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 104
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %85
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %11 "arr"
               OpName %14 "buf0"
               OpMemberName %14 0 "_GLF_uniform_float_values"
               OpName %16 ""
               OpName %32 "i"
               OpName %43 "buf1"
               OpMemberName %43 0 "_GLF_uniform_int_values"
               OpName %45 ""
               OpName %85 "_GLF_color"
               OpDecorate %13 ArrayStride 16
               OpMemberDecorate %14 0 Offset 0
               OpDecorate %14 Block
               OpDecorate %16 DescriptorSet 0
               OpDecorate %16 Binding 0
               OpDecorate %42 ArrayStride 16
               OpMemberDecorate %43 0 Offset 0
               OpDecorate %43 Block
               OpDecorate %45 DescriptorSet 0
               OpDecorate %45 Binding 1
               OpDecorate %85 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeFloat 32
          %7 = OpTypeInt 32 0
          %8 = OpConstant %7 5
          %9 = OpTypeArray %6 %8
         %10 = OpTypePointer Function %9
         %12 = OpConstant %7 2
         %13 = OpTypeArray %6 %12
         %14 = OpTypeStruct %13
         %15 = OpTypePointer Uniform %14
         %16 = OpVariable %15 Uniform
         %17 = OpTypeInt 32 1
         %18 = OpConstant %17 0
         %19 = OpTypePointer Uniform %6
         %22 = OpConstant %17 1
         %27 = OpConstant %6 0x1p+128
         %31 = OpTypePointer Function %17
         %39 = OpConstant %17 5
         %40 = OpTypeBool
         %42 = OpTypeArray %17 %12
         %43 = OpTypeStruct %42
         %44 = OpTypePointer Uniform %43
         %45 = OpVariable %44 Uniform
         %46 = OpTypePointer Uniform %17
         %49 = OpTypePointer Function %6
         %83 = OpTypeVector %6 4
         %84 = OpTypePointer Output %83
         %85 = OpVariable %84 Output
          %4 = OpFunction %2 None %3
          %5 = OpLabel
         %11 = OpVariable %10 Function
         %32 = OpVariable %31 Function
         %20 = OpAccessChain %19 %16 %18 %18
         %21 = OpLoad %6 %20
         %23 = OpAccessChain %19 %16 %18 %22
         %24 = OpLoad %6 %23
         %25 = OpAccessChain %19 %16 %18 %22
         %26 = OpLoad %6 %25
         %28 = OpAccessChain %19 %16 %18 %22
         %29 = OpLoad %6 %28
         %30 = OpCompositeConstruct %9 %21 %24 %26 %27 %29
               OpStore %11 %30
               OpStore %32 %18
               OpBranch %33
         %33 = OpLabel
               OpLoopMerge %35 %36 None
               OpBranch %37
         %37 = OpLabel
         %38 = OpLoad %17 %32
         %41 = OpSLessThan %40 %38 %39
               OpBranchConditional %41 %34 %35
         %34 = OpLabel
         %47 = OpAccessChain %46 %45 %18 %18
         %48 = OpLoad %17 %47
         %50 = OpAccessChain %49 %11 %48
         %51 = OpLoad %6 %50
         %52 = OpLoad %17 %32
         %53 = OpAccessChain %49 %11 %52
         %54 = OpLoad %6 %53
         %55 = OpFOrdGreaterThan %40 %51 %54
               OpSelectionMerge %57 None
               OpBranchConditional %55 %56 %57
         %56 = OpLabel
         %58 = OpLoad %17 %32
         %59 = OpAccessChain %19 %16 %18 %18
         %60 = OpLoad %6 %59
         %61 = OpAccessChain %49 %11 %58
               OpStore %61 %60
               OpBranch %57
         %57 = OpLabel
               OpBranch %36
         %36 = OpLabel
         %62 = OpLoad %17 %32
         %63 = OpIAdd %17 %62 %22
               OpStore %32 %63
               OpBranch %33
         %35 = OpLabel
         %64 = OpAccessChain %46 %45 %18 %18
         %65 = OpLoad %17 %64
         %66 = OpAccessChain %49 %11 %65
         %67 = OpLoad %6 %66
         %68 = OpAccessChain %19 %16 %18 %18
         %69 = OpLoad %6 %68
         %70 = OpFOrdEqual %40 %67 %69
               OpSelectionMerge %72 None
               OpBranchConditional %70 %71 %72
         %71 = OpLabel
         %73 = OpAccessChain %46 %45 %18 %22
         %74 = OpLoad %17 %73
         %75 = OpAccessChain %49 %11 %74
         %76 = OpLoad %6 %75
         %77 = OpAccessChain %19 %16 %18 %18
         %78 = OpLoad %6 %77
         %79 = OpFOrdEqual %40 %76 %78
               OpBranch %72
         %72 = OpLabel
         %80 = OpPhi %40 %70 %35 %79 %71
               OpSelectionMerge %82 None
               OpBranchConditional %80 %81 %99
         %81 = OpLabel
         %86 = OpAccessChain %46 %45 %18 %22
         %87 = OpLoad %17 %86
         %88 = OpConvertSToF %6 %87
         %89 = OpAccessChain %46 %45 %18 %18
         %90 = OpLoad %17 %89
         %91 = OpConvertSToF %6 %90
         %92 = OpAccessChain %46 %45 %18 %18
         %93 = OpLoad %17 %92
         %94 = OpConvertSToF %6 %93
         %95 = OpAccessChain %46 %45 %18 %22
         %96 = OpLoad %17 %95
         %97 = OpConvertSToF %6 %96
         %98 = OpCompositeConstruct %83 %88 %91 %94 %97
               OpStore %85 %98
               OpBranch %82
         %99 = OpLabel
        %100 = OpAccessChain %46 %45 %18 %18
        %101 = OpLoad %17 %100
        %102 = OpConvertSToF %6 %101
        %103 = OpCompositeConstruct %83 %102 %102 %102 %102
               OpStore %85 %103
               OpBranch %82
         %82 = OpLabel
               OpReturn
               OpFunctionEnd
