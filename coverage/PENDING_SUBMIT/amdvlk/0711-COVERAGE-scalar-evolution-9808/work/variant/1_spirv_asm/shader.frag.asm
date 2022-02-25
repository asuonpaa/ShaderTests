; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 111
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %40 %92
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %8 "_GLF_global_loop_count"
               OpName %11 "a"
               OpName %15 "buf1"
               OpMemberName %15 0 "_GLF_uniform_int_values"
               OpName %17 ""
               OpName %22 "i"
               OpName %40 "gl_FragCoord"
               OpName %47 "buf0"
               OpMemberName %47 0 "_GLF_uniform_float_values"
               OpName %49 ""
               OpName %92 "_GLF_color"
               OpDecorate %14 ArrayStride 16
               OpMemberDecorate %15 0 Offset 0
               OpDecorate %15 Block
               OpDecorate %17 DescriptorSet 0
               OpDecorate %17 Binding 1
               OpDecorate %40 BuiltIn FragCoord
               OpDecorate %46 ArrayStride 16
               OpMemberDecorate %47 0 Offset 0
               OpDecorate %47 Block
               OpDecorate %49 DescriptorSet 0
               OpDecorate %49 Binding 0
               OpDecorate %92 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeInt 32 1
          %7 = OpTypePointer Private %6
          %8 = OpVariable %7 Private
          %9 = OpConstant %6 0
         %10 = OpTypePointer Function %6
         %12 = OpTypeInt 32 0
         %13 = OpConstant %12 5
         %14 = OpTypeArray %6 %13
         %15 = OpTypeStruct %14
         %16 = OpTypePointer Uniform %15
         %17 = OpVariable %16 Uniform
         %18 = OpConstant %6 1
         %19 = OpTypePointer Uniform %6
         %23 = OpConstant %6 2
         %32 = OpConstant %6 4
         %35 = OpTypeBool
         %37 = OpTypeFloat 32
         %38 = OpTypeVector %37 4
         %39 = OpTypePointer Input %38
         %40 = OpVariable %39 Input
         %41 = OpConstant %12 0
         %42 = OpTypePointer Input %37
         %45 = OpConstant %12 1
         %46 = OpTypeArray %37 %45
         %47 = OpTypeStruct %46
         %48 = OpTypePointer Uniform %47
         %49 = OpVariable %48 Uniform
         %50 = OpTypePointer Uniform %37
         %66 = OpConstant %6 10
         %85 = OpConstant %6 3
         %91 = OpTypePointer Output %38
         %92 = OpVariable %91 Output
          %4 = OpFunction %2 None %3
          %5 = OpLabel
         %11 = OpVariable %10 Function
         %22 = OpVariable %10 Function
               OpStore %8 %9
         %20 = OpAccessChain %19 %17 %9 %18
         %21 = OpLoad %6 %20
               OpStore %11 %21
         %24 = OpAccessChain %19 %17 %9 %23
         %25 = OpLoad %6 %24
               OpStore %22 %25
               OpBranch %26
         %26 = OpLabel
               OpLoopMerge %28 %29 None
               OpBranch %30
         %30 = OpLabel
         %31 = OpLoad %6 %22
         %33 = OpAccessChain %19 %17 %9 %32
         %34 = OpLoad %6 %33
         %36 = OpSLessThan %35 %31 %34
               OpBranchConditional %36 %27 %28
         %27 = OpLabel
         %43 = OpAccessChain %42 %40 %41
         %44 = OpLoad %37 %43
         %51 = OpAccessChain %50 %49 %9 %9
         %52 = OpLoad %37 %51
         %53 = OpFOrdGreaterThan %35 %44 %52
               OpSelectionMerge %55 None
               OpBranchConditional %53 %54 %55
         %54 = OpLabel
         %56 = OpLoad %6 %11
         %57 = OpIAdd %6 %56 %18
               OpStore %11 %57
               OpBranch %55
         %55 = OpLabel
               OpBranch %29
         %29 = OpLabel
         %58 = OpLoad %6 %22
         %59 = OpIAdd %6 %58 %18
               OpStore %22 %59
               OpBranch %26
         %28 = OpLabel
               OpBranch %60
         %60 = OpLabel
               OpLoopMerge %62 %63 None
               OpBranch %64
         %64 = OpLabel
         %65 = OpLoad %6 %8
         %67 = OpSLessThan %35 %65 %66
               OpBranchConditional %67 %61 %62
         %61 = OpLabel
         %68 = OpLoad %6 %8
         %69 = OpIAdd %6 %68 %18
               OpStore %8 %69
         %70 = OpLoad %6 %11
         %71 = OpLoad %6 %11
         %72 = OpIMul %6 %70 %71
         %73 = OpAccessChain %19 %17 %9 %18
         %74 = OpLoad %6 %73
         %75 = OpIAdd %6 %72 %74
         %76 = OpAccessChain %19 %17 %9 %9
         %77 = OpLoad %6 %76
         %78 = OpSGreaterThan %35 %75 %77
               OpSelectionMerge %80 None
               OpBranchConditional %78 %79 %80
         %79 = OpLabel
               OpBranch %62
         %80 = OpLabel
         %82 = OpLoad %6 %11
         %83 = OpIAdd %6 %82 %18
               OpStore %11 %83
               OpBranch %63
         %63 = OpLabel
               OpBranch %60
         %62 = OpLabel
         %84 = OpLoad %6 %11
         %86 = OpAccessChain %19 %17 %9 %85
         %87 = OpLoad %6 %86
         %88 = OpIEqual %35 %84 %87
               OpSelectionMerge %90 None
               OpBranchConditional %88 %89 %106
         %89 = OpLabel
         %93 = OpAccessChain %19 %17 %9 %18
         %94 = OpLoad %6 %93
         %95 = OpConvertSToF %37 %94
         %96 = OpAccessChain %19 %17 %9 %23
         %97 = OpLoad %6 %96
         %98 = OpConvertSToF %37 %97
         %99 = OpAccessChain %19 %17 %9 %23
        %100 = OpLoad %6 %99
        %101 = OpConvertSToF %37 %100
        %102 = OpAccessChain %19 %17 %9 %18
        %103 = OpLoad %6 %102
        %104 = OpConvertSToF %37 %103
        %105 = OpCompositeConstruct %38 %95 %98 %101 %104
               OpStore %92 %105
               OpBranch %90
        %106 = OpLabel
        %107 = OpAccessChain %19 %17 %9 %23
        %108 = OpLoad %6 %107
        %109 = OpConvertSToF %37 %108
        %110 = OpCompositeConstruct %38 %109 %109 %109 %109
               OpStore %92 %110
               OpBranch %90
         %90 = OpLabel
               OpReturn
               OpFunctionEnd
