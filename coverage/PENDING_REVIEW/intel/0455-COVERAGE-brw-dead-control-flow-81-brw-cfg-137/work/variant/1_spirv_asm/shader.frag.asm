; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 75
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %9 %47
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %9 "_GLF_color"
               OpName %15 "i"
               OpName %19 "buf1"
               OpMemberName %19 0 "_GLF_uniform_int_values"
               OpName %21 ""
               OpName %47 "gl_FragCoord"
               OpName %53 "buf0"
               OpMemberName %53 0 "_GLF_uniform_float_values"
               OpName %55 ""
               OpName %66 "buf2"
               OpMemberName %66 0 "injectionSwitch"
               OpName %68 ""
               OpDecorate %9 Location 0
               OpDecorate %18 ArrayStride 16
               OpMemberDecorate %19 0 Offset 0
               OpDecorate %19 Block
               OpDecorate %21 DescriptorSet 0
               OpDecorate %21 Binding 1
               OpDecorate %47 BuiltIn FragCoord
               OpDecorate %52 ArrayStride 16
               OpMemberDecorate %53 0 Offset 0
               OpDecorate %53 Block
               OpDecorate %55 DescriptorSet 0
               OpDecorate %55 Binding 0
               OpMemberDecorate %66 0 Offset 0
               OpDecorate %66 Block
               OpDecorate %68 DescriptorSet 0
               OpDecorate %68 Binding 2
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeFloat 32
          %7 = OpTypeVector %6 4
          %8 = OpTypePointer Output %7
          %9 = OpVariable %8 Output
         %10 = OpConstant %6 1
         %11 = OpConstant %6 0
         %12 = OpConstantComposite %7 %10 %11 %11 %10
         %13 = OpTypeInt 32 1
         %14 = OpTypePointer Function %13
         %16 = OpTypeInt 32 0
         %17 = OpConstant %16 2
         %18 = OpTypeArray %13 %17
         %19 = OpTypeStruct %18
         %20 = OpTypePointer Uniform %19
         %21 = OpVariable %20 Uniform
         %22 = OpConstant %13 0
         %23 = OpConstant %13 1
         %24 = OpTypePointer Uniform %13
         %35 = OpTypeBool
         %46 = OpTypePointer Input %7
         %47 = OpVariable %46 Input
         %48 = OpConstant %16 1
         %49 = OpTypePointer Input %6
         %52 = OpTypeArray %6 %48
         %53 = OpTypeStruct %52
         %54 = OpTypePointer Uniform %53
         %55 = OpVariable %54 Uniform
         %56 = OpTypePointer Uniform %6
         %63 = OpTypeVector %6 3
         %64 = OpConstantComposite %63 %10 %10 %10
         %65 = OpTypeVector %6 2
         %66 = OpTypeStruct %65
         %67 = OpTypePointer Uniform %66
         %68 = OpVariable %67 Uniform
          %4 = OpFunction %2 None %3
          %5 = OpLabel
         %15 = OpVariable %14 Function
               OpStore %9 %12
         %25 = OpAccessChain %24 %21 %22 %23
         %26 = OpLoad %13 %25
               OpStore %15 %26
               OpBranch %27
         %27 = OpLabel
               OpLoopMerge %29 %30 None
               OpBranch %31
         %31 = OpLabel
         %32 = OpLoad %13 %15
         %33 = OpAccessChain %24 %21 %22 %22
         %34 = OpLoad %13 %33
         %36 = OpSLessThan %35 %32 %34
               OpBranchConditional %36 %28 %29
         %28 = OpLabel
         %37 = OpLoad %13 %15
         %38 = OpAccessChain %24 %21 %22 %23
         %39 = OpLoad %13 %38
         %40 = OpINotEqual %35 %37 %39
               OpSelectionMerge %42 None
               OpBranchConditional %40 %41 %42
         %41 = OpLabel
               OpReturn
         %42 = OpLabel
               OpBranch %30
         %30 = OpLabel
         %44 = OpLoad %13 %15
         %45 = OpIAdd %13 %44 %23
               OpStore %15 %45
               OpBranch %27
         %29 = OpLabel
         %50 = OpAccessChain %49 %47 %48
         %51 = OpLoad %6 %50
         %57 = OpAccessChain %56 %55 %22 %22
         %58 = OpLoad %6 %57
         %59 = OpFOrdLessThan %35 %51 %58
               OpSelectionMerge %61 None
               OpBranchConditional %59 %60 %61
         %60 = OpLabel
               OpReturn
         %61 = OpLabel
         %69 = OpAccessChain %56 %68 %22 %48
         %70 = OpLoad %6 %69
         %71 = OpCompositeExtract %6 %64 0
         %72 = OpCompositeExtract %6 %64 1
         %73 = OpCompositeExtract %6 %64 2
         %74 = OpCompositeConstruct %7 %71 %72 %73 %70
               OpStore %9 %74
               OpReturn
               OpFunctionEnd
