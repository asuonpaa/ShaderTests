; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 62
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %45
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %8 "a"
               OpName %18 "buf0"
               OpMemberName %18 0 "_GLF_uniform_int_values"
               OpName %20 ""
               OpName %45 "_GLF_color"
               OpDecorate %17 ArrayStride 16
               OpMemberDecorate %18 0 Offset 0
               OpDecorate %18 Block
               OpDecorate %20 DescriptorSet 0
               OpDecorate %20 Binding 0
               OpDecorate %45 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeInt 32 1
          %7 = OpTypePointer Function %6
          %9 = OpConstant %6 1
         %15 = OpTypeInt 32 0
         %16 = OpConstant %15 2
         %17 = OpTypeArray %6 %16
         %18 = OpTypeStruct %17
         %19 = OpTypePointer Uniform %18
         %20 = OpVariable %19 Uniform
         %21 = OpConstant %6 0
         %22 = OpTypePointer Uniform %6
         %25 = OpTypeBool
         %30 = OpConstantTrue %25
         %42 = OpTypeFloat 32
         %43 = OpTypeVector %42 4
         %44 = OpTypePointer Output %43
         %45 = OpVariable %44 Output
         %46 = OpConstant %42 1
          %4 = OpFunction %2 None %3
          %5 = OpLabel
          %8 = OpVariable %7 Function
               OpStore %8 %9
               OpBranch %10
         %10 = OpLabel
               OpLoopMerge %12 %13 None
               OpBranch %11
         %11 = OpLabel
         %14 = OpLoad %6 %8
         %23 = OpAccessChain %22 %20 %21 %21
         %24 = OpLoad %6 %23
         %26 = OpSGreaterThanEqual %25 %14 %24
               OpSelectionMerge %28 None
               OpBranchConditional %26 %27 %28
         %27 = OpLabel
               OpBranch %12
         %28 = OpLabel
               OpSelectionMerge %32 None
               OpBranchConditional %30 %31 %32
         %31 = OpLabel
               OpKill
         %32 = OpLabel
         %34 = OpLoad %6 %8
         %35 = OpIAdd %6 %34 %9
               OpStore %8 %35
               OpBranch %13
         %13 = OpLabel
         %36 = OpLoad %6 %8
         %37 = OpINotEqual %25 %36 %9
               OpBranchConditional %37 %10 %12
         %12 = OpLabel
         %38 = OpLoad %6 %8
         %39 = OpIEqual %25 %38 %9
               OpSelectionMerge %41 None
               OpBranchConditional %39 %40 %57
         %40 = OpLabel
         %47 = OpAccessChain %22 %20 %21 %21
         %48 = OpLoad %6 %47
         %49 = OpConvertSToF %42 %48
         %50 = OpAccessChain %22 %20 %21 %21
         %51 = OpLoad %6 %50
         %52 = OpConvertSToF %42 %51
         %53 = OpAccessChain %22 %20 %21 %9
         %54 = OpLoad %6 %53
         %55 = OpConvertSToF %42 %54
         %56 = OpCompositeConstruct %43 %46 %49 %52 %55
               OpStore %45 %56
               OpBranch %41
         %57 = OpLabel
         %58 = OpAccessChain %22 %20 %21 %21
         %59 = OpLoad %6 %58
         %60 = OpConvertSToF %42 %59
         %61 = OpCompositeConstruct %43 %60 %60 %60 %60
               OpStore %45 %61
               OpBranch %41
         %41 = OpLabel
               OpReturn
               OpFunctionEnd
