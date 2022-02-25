; SPIR-V
; Version: 1.0
; Generator: Khronos Glslang Reference Front End; 10
; Bound: 44
; Schema: 0
               OpCapability Shader
          %1 = OpExtInstImport "GLSL.std.450"
               OpMemoryModel Logical GLSL450
               OpEntryPoint Fragment %4 "main" %38
               OpExecutionMode %4 OriginUpperLeft
               OpSource ESSL 320
               OpName %4 "main"
               OpName %8 "a"
               OpName %14 "buf_push"
               OpMemberName %14 0 "one"
               OpName %16 ""
               OpName %38 "_GLF_color"
               OpMemberDecorate %14 0 Offset 0
               OpDecorate %14 Block
               OpDecorate %38 Location 0
          %2 = OpTypeVoid
          %3 = OpTypeFunction %2
          %6 = OpTypeInt 32 1
          %7 = OpTypePointer Function %6
          %9 = OpConstant %6 100
         %14 = OpTypeStruct %6
         %15 = OpTypePointer PushConstant %14
         %16 = OpVariable %15 PushConstant
         %17 = OpConstant %6 0
         %18 = OpTypePointer PushConstant %6
         %21 = OpConstant %6 1
         %22 = OpTypeBool
         %35 = OpTypeFloat 32
         %36 = OpTypeVector %35 4
         %37 = OpTypePointer Output %36
         %38 = OpVariable %37 Output
         %39 = OpConstant %35 1
         %40 = OpConstant %35 0
         %41 = OpConstantComposite %36 %39 %40 %40 %39
         %43 = OpConstantComposite %36 %40 %40 %40 %40
          %4 = OpFunction %2 None %3
          %5 = OpLabel
          %8 = OpVariable %7 Function
               OpStore %8 %9
               OpBranch %10
         %10 = OpLabel
               OpLoopMerge %12 %13 None
               OpBranch %11
         %11 = OpLabel
         %19 = OpAccessChain %18 %16 %17
         %20 = OpLoad %6 %19
         %23 = OpSLessThan %22 %20 %21
               OpSelectionMerge %25 None
               OpBranchConditional %23 %24 %25
         %24 = OpLabel
               OpBranch %12
         %25 = OpLabel
         %27 = OpLoad %6 %8
         %28 = OpISub %6 %27 %21
               OpStore %8 %28
               OpBranch %13
         %13 = OpLabel
         %29 = OpLoad %6 %8
         %30 = OpSGreaterThan %22 %29 %21
               OpBranchConditional %30 %10 %12
         %12 = OpLabel
         %31 = OpLoad %6 %8
         %32 = OpIEqual %22 %31 %21
               OpSelectionMerge %34 None
               OpBranchConditional %32 %33 %42
         %33 = OpLabel
               OpStore %38 %41
               OpBranch %34
         %42 = OpLabel
               OpStore %38 %43
               OpBranch %34
         %34 = OpLabel
               OpReturn
               OpFunctionEnd
