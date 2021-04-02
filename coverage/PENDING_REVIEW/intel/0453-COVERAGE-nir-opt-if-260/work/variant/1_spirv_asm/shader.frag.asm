; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 73
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %9
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %9 "_GLF_color"
               OpName %14 "buf0"
               OpMemberName %14 0 "_GLF_uniform_int_values"
               OpName %16 ""
               OpName %37 "buf1"
               OpMemberName %37 0 "zero"
               OpName %39 ""
               OpDecorate %9 Location 0
               OpDecorate %13 ArrayStride 16
               OpMemberDecorate %14 0 Offset 0
               OpDecorate %14 Block
               OpDecorate %16 DescriptorSet 0
               OpDecorate %16 Binding 0
               OpMemberDecorate %37 0 Offset 0
               OpDecorate %37 Block
               OpDecorate %39 DescriptorSet 0
               OpDecorate %39 Binding 1
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeFloat 32
          %7 = OpTypeVector %6 4
          %8 = OpTypePointer Output %7
          %9 = OpVariable %8 Output
         %10 = OpTypeInt 32 1
         %11 = OpTypeInt 32 0
         %12 = OpConstant %11 4
         %13 = OpTypeArray %10 %12
         %14 = OpTypeStruct %13
         %15 = OpTypePointer Uniform %14
         %16 = OpVariable %15 Uniform
         %17 = OpConstant %10 0
         %18 = OpTypePointer Uniform %10
         %22 = OpConstant %10 1
         %37 = OpTypeStruct %10
         %38 = OpTypePointer Uniform %37
         %39 = OpVariable %38 Uniform
         %44 = OpTypeBool
         %51 = OpConstant %10 2
         %60 = OpConstant %10 3
         %68 = OpConstantFalse %44
          %4 = OpFunction %2 None %3
          %5 = OpLabel
         %19 = OpAccessChain %18 %16 %17 %17
         %20 = OpLoad %10 %19
         %21 = OpConvertSToF %6 %20
         %23 = OpAccessChain %18 %16 %17 %22
         %24 = OpLoad %10 %23
         %25 = OpConvertSToF %6 %24
         %26 = OpAccessChain %18 %16 %17 %22
         %27 = OpLoad %10 %26
         %28 = OpConvertSToF %6 %27
         %29 = OpAccessChain %18 %16 %17 %17
         %30 = OpLoad %10 %29
         %31 = OpConvertSToF %6 %30
         %32 = OpCompositeConstruct %7 %21 %25 %28 %31
               OpStore %9 %32
               OpBranch %33
         %33 = OpLabel
               OpLoopMerge %35 %36 None
               OpBranch %34
         %34 = OpLabel
         %40 = OpAccessChain %18 %39 %17
         %41 = OpLoad %10 %40
         %42 = OpAccessChain %18 %16 %17 %17
         %43 = OpLoad %10 %42
         %45 = OpIEqual %44 %41 %43
               OpSelectionMerge %47 None
               OpBranchConditional %45 %46 %47
         %46 = OpLabel
               OpBranch %36
         %47 = OpLabel
         %49 = OpAccessChain %18 %39 %17
         %50 = OpLoad %10 %49
         %52 = OpAccessChain %18 %16 %17 %51
         %53 = OpLoad %10 %52
         %54 = OpIEqual %44 %50 %53
               OpSelectionMerge %56 None
               OpBranchConditional %54 %55 %56
         %55 = OpLabel
               OpBranch %35
         %56 = OpLabel
         %58 = OpAccessChain %18 %39 %17
         %59 = OpLoad %10 %58
         %61 = OpAccessChain %18 %16 %17 %60
         %62 = OpLoad %10 %61
         %63 = OpIEqual %44 %59 %62
               OpSelectionMerge %65 None
               OpBranchConditional %63 %64 %65
         %64 = OpLabel
               OpKill
         %65 = OpLabel
               OpReturn
         %36 = OpLabel
               OpBranchConditional %68 %33 %35
         %35 = OpLabel
         %69 = OpAccessChain %18 %16 %17 %22
         %70 = OpLoad %10 %69
         %71 = OpConvertSToF %6 %70
         %72 = OpCompositeConstruct %7 %71 %71 %71 %71
               OpStore %9 %72
               OpReturn
               OpFunctionEnd
