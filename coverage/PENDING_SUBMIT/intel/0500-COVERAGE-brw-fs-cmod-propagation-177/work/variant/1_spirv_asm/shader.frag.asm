; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 61
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %12 %42
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %8 "a"
               OpName %12 "gl_FragCoord"
               OpName %28 "buf0"
               OpMemberName %28 0 "_GLF_uniform_int_values"
               OpName %30 ""
               OpName %42 "_GLF_color"
               OpDecorate %12 BuiltIn FragCoord
               OpDecorate %27 ArrayStride 16
               OpMemberDecorate %28 0 Offset 0
               OpDecorate %28 Block
               OpDecorate %30 DescriptorSet 0
               OpDecorate %30 Binding 0
               OpDecorate %42 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeInt 32 1
          %7 = OpTypePointer Function %6
          %9 = OpTypeFloat 32
         %10 = OpTypeVector %9 4
         %11 = OpTypePointer Input %10
         %12 = OpVariable %11 Input
         %13 = OpTypeInt 32 0
         %14 = OpConstant %13 0
         %15 = OpTypePointer Input %9
         %21 = OpConstant %6 0
         %22 = OpTypeBool
         %26 = OpConstant %13 2
         %27 = OpTypeArray %6 %26
         %28 = OpTypeStruct %27
         %29 = OpTypePointer Uniform %28
         %30 = OpVariable %29 Uniform
         %31 = OpConstant %6 1
         %32 = OpTypePointer Uniform %6
         %41 = OpTypePointer Output %10
         %42 = OpVariable %41 Output
          %4 = OpFunction %2 None %3
          %5 = OpLabel
          %8 = OpVariable %7 Function
         %16 = OpAccessChain %15 %12 %14
         %17 = OpLoad %9 %16
         %18 = OpConvertFToS %6 %17
               OpStore %8 %18
         %19 = OpLoad %6 %8
         %20 = OpNot %6 %19
         %23 = OpSLessThan %22 %20 %21
               OpSelectionMerge %25 None
               OpBranchConditional %23 %24 %25
         %24 = OpLabel
         %33 = OpAccessChain %32 %30 %21 %31
         %34 = OpLoad %6 %33
               OpStore %8 %34
               OpBranch %25
         %25 = OpLabel
         %35 = OpLoad %6 %8
         %36 = OpAccessChain %32 %30 %21 %31
         %37 = OpLoad %6 %36
         %38 = OpIEqual %22 %35 %37
               OpSelectionMerge %40 None
               OpBranchConditional %38 %39 %56
         %39 = OpLabel
         %43 = OpAccessChain %32 %30 %21 %31
         %44 = OpLoad %6 %43
         %45 = OpConvertSToF %9 %44
         %46 = OpAccessChain %32 %30 %21 %21
         %47 = OpLoad %6 %46
         %48 = OpConvertSToF %9 %47
         %49 = OpAccessChain %32 %30 %21 %21
         %50 = OpLoad %6 %49
         %51 = OpConvertSToF %9 %50
         %52 = OpAccessChain %32 %30 %21 %31
         %53 = OpLoad %6 %52
         %54 = OpConvertSToF %9 %53
         %55 = OpCompositeConstruct %10 %45 %48 %51 %54
               OpStore %42 %55
               OpBranch %40
         %56 = OpLabel
         %57 = OpAccessChain %32 %30 %21 %21
         %58 = OpLoad %6 %57
         %59 = OpConvertSToF %9 %58
         %60 = OpCompositeConstruct %10 %59 %59 %59 %59
               OpStore %42 %60
               OpBranch %40
         %40 = OpLabel
               OpReturn
               OpFunctionEnd
