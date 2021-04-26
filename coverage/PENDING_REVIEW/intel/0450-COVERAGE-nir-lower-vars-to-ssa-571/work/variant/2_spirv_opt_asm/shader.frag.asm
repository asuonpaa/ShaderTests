; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 137
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %116
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %10 "m43"
               OpName %14 "buf1"
               OpMemberName %14 0 "_GLF_uniform_float_values"
               OpName %16 ""
               OpName %32 "buf0"
               OpMemberName %32 0 "_GLF_uniform_int_values"
               OpName %34 ""
               OpName %45 "sums"
               OpName %54 "i"
               OpName %86 "a"
               OpName %116 "_GLF_color"
               OpDecorate %13 ArrayStride 16
               OpMemberDecorate %14 0 Offset 0
               OpDecorate %14 Block
               OpDecorate %16 DescriptorSet 0
               OpDecorate %16 Binding 1
               OpDecorate %31 ArrayStride 16
               OpMemberDecorate %32 0 Offset 0
               OpDecorate %32 Block
               OpDecorate %34 DescriptorSet 0
               OpDecorate %34 Binding 0
               OpDecorate %116 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeFloat 32
          %7 = OpTypeVector %6 3
          %8 = OpTypeMatrix %7 4
          %9 = OpTypePointer Function %8
         %11 = OpTypeInt 32 0
         %12 = OpConstant %11 3
         %13 = OpTypeArray %6 %12
         %14 = OpTypeStruct %13
         %15 = OpTypePointer Uniform %14
         %16 = OpVariable %15 Uniform
         %17 = OpTypeInt 32 1
         %18 = OpConstant %17 0
         %19 = OpConstant %17 1
         %20 = OpTypePointer Uniform %6
         %23 = OpConstant %6 1
         %24 = OpConstant %6 0
         %30 = OpConstant %11 4
         %31 = OpTypeArray %17 %30
         %32 = OpTypeStruct %31
         %33 = OpTypePointer Uniform %32
         %34 = OpVariable %33 Uniform
         %35 = OpTypePointer Uniform %17
         %42 = OpTypePointer Function %6
         %44 = OpTypePointer Function %13
         %53 = OpTypePointer Function %17
         %63 = OpConstant %17 3
         %66 = OpTypeBool
         %87 = OpConstant %17 4
         %88 = OpConstant %17 2
        %114 = OpTypeVector %6 4
        %115 = OpTypePointer Output %114
        %116 = OpVariable %115 Output
        %136 = OpConstantComposite %7 %24 %24 %24
          %4 = OpFunction %2 None %3
          %5 = OpLabel
         %10 = OpVariable %9 Function
         %45 = OpVariable %44 Function
         %54 = OpVariable %53 Function
         %86 = OpVariable %53 Function
         %21 = OpAccessChain %20 %16 %18 %19
         %22 = OpLoad %6 %21
         %25 = OpCompositeConstruct %7 %22 %24 %24
         %26 = OpCompositeConstruct %7 %24 %22 %24
         %27 = OpCompositeConstruct %7 %24 %24 %22
         %28 = OpCompositeConstruct %7 %24 %24 %24
         %29 = OpCompositeConstruct %8 %25 %26 %27 %136
               OpStore %10 %29
         %36 = OpAccessChain %35 %34 %18 %18
         %37 = OpLoad %17 %36
         %38 = OpAccessChain %35 %34 %18 %18
         %39 = OpLoad %17 %38
         %40 = OpAccessChain %20 %16 %18 %18
         %41 = OpLoad %6 %40
         %43 = OpAccessChain %42 %10 %37 %39
               OpStore %43 %41
         %46 = OpAccessChain %20 %16 %18 %18
         %47 = OpLoad %6 %46
         %48 = OpAccessChain %20 %16 %18 %18
         %49 = OpLoad %6 %48
         %50 = OpAccessChain %20 %16 %18 %18
         %51 = OpLoad %6 %50
         %52 = OpCompositeConstruct %13 %47 %49 %51
               OpStore %45 %52
         %55 = OpAccessChain %35 %34 %18 %18
         %56 = OpLoad %17 %55
               OpStore %54 %56
               OpBranch %57
         %57 = OpLabel
        %135 = OpPhi %17 %56 %5 %80 %60
               OpLoopMerge %59 %60 None
               OpBranch %61
         %61 = OpLabel
         %64 = OpAccessChain %35 %34 %18 %63
         %65 = OpLoad %17 %64
         %67 = OpSLessThan %66 %135 %65
               OpBranchConditional %67 %58 %59
         %58 = OpLabel
         %68 = OpAccessChain %35 %34 %18 %18
         %69 = OpLoad %17 %68
         %71 = OpAccessChain %35 %34 %18 %18
         %72 = OpLoad %17 %71
         %73 = OpAccessChain %42 %10 %135 %72
         %74 = OpLoad %6 %73
         %75 = OpAccessChain %42 %45 %69
         %76 = OpLoad %6 %75
         %77 = OpFAdd %6 %76 %74
         %78 = OpAccessChain %42 %45 %69
               OpStore %78 %77
               OpBranch %60
         %60 = OpLabel
         %80 = OpIAdd %17 %135 %19
               OpStore %54 %80
               OpBranch %57
         %59 = OpLabel
         %81 = OpAccessChain %35 %34 %18 %19
         %82 = OpLoad %17 %81
         %83 = OpIEqual %66 %82 %19
               OpSelectionMerge %85 None
               OpBranchConditional %83 %84 %85
         %84 = OpLabel
               OpStore %86 %87
         %89 = OpAccessChain %35 %34 %18 %88
         %90 = OpLoad %17 %89
         %92 = OpAccessChain %35 %34 %18 %18
         %93 = OpLoad %17 %92
         %94 = OpAccessChain %42 %10 %87 %93
         %95 = OpLoad %6 %94
         %96 = OpAccessChain %42 %45 %90
         %97 = OpLoad %6 %96
         %98 = OpFAdd %6 %97 %95
         %99 = OpAccessChain %42 %45 %90
               OpStore %99 %98
               OpBranch %85
         %85 = OpLabel
        %100 = OpAccessChain %35 %34 %18 %19
        %101 = OpLoad %17 %100
        %102 = OpAccessChain %42 %45 %101
        %103 = OpLoad %6 %102
        %104 = OpAccessChain %35 %34 %18 %18
        %105 = OpLoad %17 %104
        %106 = OpAccessChain %42 %45 %105
        %107 = OpLoad %6 %106
        %108 = OpFAdd %6 %103 %107
        %109 = OpAccessChain %20 %16 %18 %88
        %110 = OpLoad %6 %109
        %111 = OpFOrdEqual %66 %108 %110
               OpSelectionMerge %113 None
               OpBranchConditional %111 %112 %130
        %112 = OpLabel
        %117 = OpAccessChain %35 %34 %18 %18
        %118 = OpLoad %17 %117
        %119 = OpConvertSToF %6 %118
        %120 = OpAccessChain %35 %34 %18 %19
        %121 = OpLoad %17 %120
        %122 = OpConvertSToF %6 %121
        %123 = OpAccessChain %35 %34 %18 %19
        %124 = OpLoad %17 %123
        %125 = OpConvertSToF %6 %124
        %126 = OpAccessChain %35 %34 %18 %18
        %127 = OpLoad %17 %126
        %128 = OpConvertSToF %6 %127
        %129 = OpCompositeConstruct %114 %119 %122 %125 %128
               OpStore %116 %129
               OpBranch %113
        %130 = OpLabel
        %131 = OpAccessChain %35 %34 %18 %19
        %132 = OpLoad %17 %131
        %133 = OpConvertSToF %6 %132
        %134 = OpCompositeConstruct %114 %133 %133 %133 %133
               OpStore %116 %134
               OpBranch %113
        %113 = OpLabel
               OpReturn
               OpFunctionEnd
