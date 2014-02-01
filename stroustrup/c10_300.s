	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin0:
	.cfi_lsda 16, Lexception0
## BB#0:
	pushq	%rbp
Ltmp37:
	.cfi_def_cfa_offset 16
Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$1104, %rsp             ## imm = 0x450
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$0, -364(%rbp)
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	leaq	-392(%rbp), %rsi
	movq	%rsi, -360(%rbp)
	movq	-360(%rbp), %rsi
	movq	%rsi, -352(%rbp)
	movq	-352(%rbp), %rsi
	movq	%rsi, -344(%rbp)
	movq	-344(%rbp), %rdi
	movq	%rdi, -336(%rbp)
	movq	-336(%rbp), %rdi
	movq	%rdi, -328(%rbp)
	movq	-328(%rbp), %rdi
	movq	%rdi, -320(%rbp)
	movq	%rsi, -296(%rbp)
	movq	-296(%rbp), %rsi
	movq	%rsi, -288(%rbp)
	movq	-288(%rbp), %rsi
	movq	%rsi, -280(%rbp)
	movq	-280(%rbp), %rsi
	movq	%rsi, -304(%rbp)
	movl	$0, -308(%rbp)
	movq	%rax, -992(%rbp)        ## 8-byte Spill
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$3, -308(%rbp)
	jae	LBB0_3
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-308(%rbp), %eax
	movq	-304(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movl	-308(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -308(%rbp)
	jmp	LBB0_1
LBB0_3:                                 ## %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev.exit
Ltmp0:
	leaq	-392(%rbp), %rsi
	movq	__ZNSt3__13cinE@GOTPCREL(%rip), %rdi
	callq	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
Ltmp1:
	movq	%rax, -1000(%rbp)       ## 8-byte Spill
	jmp	LBB0_4
LBB0_4:
	leaq	-392(%rbp), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rax, -1008(%rbp)       ## 8-byte Spill
	je	LBB0_6
## BB#5:
	movq	-1008(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -1016(%rbp)       ## 8-byte Spill
	jmp	LBB0_7
LBB0_6:
	movq	-1008(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	movq	-208(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -1016(%rbp)       ## 8-byte Spill
LBB0_7:                                 ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv.exit
	movq	-1016(%rbp), %rax       ## 8-byte Reload
	leaq	-976(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	%rax, -152(%rbp)
	movl	$16, -156(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$416, %rcx              ## imm = 0x1A0
	movq	%rcx, -136(%rbp)
	movq	%rcx, -128(%rbp)
	movq	__ZTVNSt3__18ios_baseE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 416(%rax)
	movq	__ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 416(%rax)
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdx
	addq	$24, %rdx
	movq	%rdx, (%rax)
	addq	$64, %rcx
	movq	%rcx, 416(%rax)
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rax, -104(%rbp)
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rdx
	addq	$8, %rdx
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	-104(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rdx
	movq	-24(%rsi), %rsi
	movq	%rdx, (%rcx,%rsi)
	movq	(%rcx), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rcx
	movq	-120(%rbp), %rdx
	movq	%rcx, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-88(%rbp), %rcx
Ltmp2:
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movq	%rax, -1024(%rbp)       ## 8-byte Spill
	movq	%rcx, -1032(%rbp)       ## 8-byte Spill
	callq	__ZNSt3__18ios_base4initEPv
Ltmp3:
	jmp	LBB0_8
LBB0_8:                                 ## %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE.exit.i
	movq	-1032(%rbp), %rax       ## 8-byte Reload
	movq	$0, 136(%rax)
	movl	$-1, 144(%rax)
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rcx
	movq	%rcx, %rdx
	addq	$24, %rdx
	movq	-1024(%rbp), %rsi       ## 8-byte Reload
	movq	%rdx, (%rsi)
	addq	$64, %rcx
	movq	%rcx, 416(%rsi)
	addq	$8, %rsi
Ltmp5:
	movq	%rsi, %rdi
	movq	%rsi, -1040(%rbp)       ## 8-byte Spill
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp6:
	jmp	LBB0_9
LBB0_9:
	movq	-1024(%rbp), %rax       ## 8-byte Reload
	addq	$8, %rax
	movq	-152(%rbp), %rsi
	movl	-156(%rbp), %ecx
	orl	$16, %ecx
Ltmp8:
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp9:
	movq	%rax, -1048(%rbp)       ## 8-byte Spill
	jmp	LBB0_10
LBB0_10:
	movq	-1048(%rbp), %rax       ## 8-byte Reload
	cmpq	$0, %rax
	jne	LBB0_22
## BB#11:
	movq	-1024(%rbp), %rax       ## 8-byte Reload
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movl	$4, -76(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$4, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	32(%rax), %edx
	orl	$4, %edx
Ltmp10:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp11:
	jmp	LBB0_12
LBB0_12:                                ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit.i
	jmp	LBB0_22
LBB0_13:
Ltmp4:
	movl	%edx, %ecx
	movq	%rax, -168(%rbp)
	movl	%ecx, -172(%rbp)
	jmp	LBB0_19
LBB0_14:
Ltmp7:
	movl	%edx, %ecx
	movq	%rax, -168(%rbp)
	movl	%ecx, -172(%rbp)
	jmp	LBB0_17
LBB0_15:
Ltmp12:
	movl	%edx, %ecx
	movq	%rax, -168(%rbp)
	movl	%ecx, -172(%rbp)
Ltmp13:
	movq	-1040(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
Ltmp14:
	jmp	LBB0_16
LBB0_16:
	jmp	LBB0_17
LBB0_17:
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$8, %rax
Ltmp15:
	movq	-1024(%rbp), %rdi       ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
Ltmp16:
	jmp	LBB0_18
LBB0_18:
	jmp	LBB0_19
LBB0_19:
	movq	-1024(%rbp), %rax       ## 8-byte Reload
	addq	$416, %rax              ## imm = 0x1A0
Ltmp17:
	movq	%rax, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp18:
	jmp	LBB0_20
LBB0_20:
	movq	-168(%rbp), %rax
	movl	-172(%rbp), %ecx
	movq	%rax, -1056(%rbp)       ## 8-byte Spill
	movl	%ecx, -1060(%rbp)       ## 4-byte Spill
	jmp	LBB0_31
LBB0_21:
Ltmp19:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -1064(%rbp)       ## 4-byte Spill
	callq	___clang_call_terminate
LBB0_22:                                ## %_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj.exit
	jmp	LBB0_23
LBB0_23:
	leaq	-976(%rbp), %rax
	movq	-976(%rbp), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	32(%rax), %edx
	andl	$5, %edx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -1065(%rbp)       ## 1-byte Spill
## BB#24:
	movb	-1065(%rbp), %al        ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_25
	jmp	LBB0_33
LBB0_25:
Ltmp20:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str1(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp21:
	movq	%rax, -1080(%rbp)       ## 8-byte Spill
	jmp	LBB0_26
LBB0_26:
Ltmp22:
	leaq	-392(%rbp), %rsi
	movq	-1080(%rbp), %rdi       ## 8-byte Reload
	callq	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
Ltmp23:
	movq	%rax, -1088(%rbp)       ## 8-byte Spill
	jmp	LBB0_27
LBB0_27:
	movq	-1088(%rbp), %rax       ## 8-byte Reload
	movq	%rax, -16(%rbp)
	leaq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_(%rip), %rcx
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rdi
Ltmp24:
	callq	*%rcx
Ltmp25:
	movq	%rax, -1096(%rbp)       ## 8-byte Spill
	jmp	LBB0_28
LBB0_28:                                ## %_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E.exit
	jmp	LBB0_29
LBB0_29:
	jmp	LBB0_33
LBB0_30:
Ltmp31:
	movl	%edx, %ecx
	movq	%rax, -1056(%rbp)       ## 8-byte Spill
	movl	%ecx, -1060(%rbp)       ## 4-byte Spill
LBB0_31:                                ## %.body
	movq	-1056(%rbp), %rax       ## 8-byte Reload
	movl	-1060(%rbp), %ecx       ## 4-byte Reload
	movq	%rax, -400(%rbp)
	movl	%ecx, -404(%rbp)
	jmp	LBB0_37
LBB0_32:
Ltmp26:
	movl	%edx, %ecx
	movq	%rax, -400(%rbp)
	movl	%ecx, -404(%rbp)
Ltmp27:
	leaq	-976(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
Ltmp28:
	jmp	LBB0_36
LBB0_33:
	movl	$0, -364(%rbp)
	movl	$1, -980(%rbp)
Ltmp29:
	leaq	-976(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
Ltmp30:
	jmp	LBB0_34
LBB0_34:
	leaq	-392(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movl	-364(%rbp), %eax
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rdi
	movl	%eax, -1100(%rbp)       ## 4-byte Spill
	jne	LBB0_41
## BB#35:                               ## %SP_return
	movl	-1100(%rbp), %eax       ## 4-byte Reload
	addq	$1104, %rsp             ## imm = 0x450
	popq	%rbp
	ret
LBB0_36:
	jmp	LBB0_37
LBB0_37:
Ltmp32:
	leaq	-392(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp33:
	jmp	LBB0_38
LBB0_38:
	jmp	LBB0_39
LBB0_39:
	movq	-400(%rbp), %rdi
	callq	__Unwind_Resume
LBB0_40:
Ltmp34:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -1104(%rbp)       ## 4-byte Spill
	callq	___clang_call_terminate
LBB0_41:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc
Leh_func_end0:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table0:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\245\201\200\200"     ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	 "\234\001"             ## Call site table length
Lset0 = Leh_func_begin0-Leh_func_begin0 ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp0-Leh_func_begin0           ##   Call between Leh_func_begin0 and Ltmp0
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp0-Leh_func_begin0           ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp1-Ltmp0                     ##   Call between Ltmp0 and Ltmp1
	.long	Lset3
Lset4 = Ltmp31-Leh_func_begin0          ##     jumps to Ltmp31
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp2-Leh_func_begin0           ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp3-Ltmp2                     ##   Call between Ltmp2 and Ltmp3
	.long	Lset6
Lset7 = Ltmp4-Leh_func_begin0           ##     jumps to Ltmp4
	.long	Lset7
	.byte	0                       ##   On action: cleanup
Lset8 = Ltmp5-Leh_func_begin0           ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Ltmp6-Ltmp5                     ##   Call between Ltmp5 and Ltmp6
	.long	Lset9
Lset10 = Ltmp7-Leh_func_begin0          ##     jumps to Ltmp7
	.long	Lset10
	.byte	0                       ##   On action: cleanup
Lset11 = Ltmp8-Leh_func_begin0          ## >> Call Site 5 <<
	.long	Lset11
Lset12 = Ltmp11-Ltmp8                   ##   Call between Ltmp8 and Ltmp11
	.long	Lset12
Lset13 = Ltmp12-Leh_func_begin0         ##     jumps to Ltmp12
	.long	Lset13
	.byte	0                       ##   On action: cleanup
Lset14 = Ltmp13-Leh_func_begin0         ## >> Call Site 6 <<
	.long	Lset14
Lset15 = Ltmp18-Ltmp13                  ##   Call between Ltmp13 and Ltmp18
	.long	Lset15
Lset16 = Ltmp19-Leh_func_begin0         ##     jumps to Ltmp19
	.long	Lset16
	.byte	1                       ##   On action: 1
Lset17 = Ltmp20-Leh_func_begin0         ## >> Call Site 7 <<
	.long	Lset17
Lset18 = Ltmp25-Ltmp20                  ##   Call between Ltmp20 and Ltmp25
	.long	Lset18
Lset19 = Ltmp26-Leh_func_begin0         ##     jumps to Ltmp26
	.long	Lset19
	.byte	0                       ##   On action: cleanup
Lset20 = Ltmp27-Leh_func_begin0         ## >> Call Site 8 <<
	.long	Lset20
Lset21 = Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.long	Lset21
Lset22 = Ltmp34-Leh_func_begin0         ##     jumps to Ltmp34
	.long	Lset22
	.byte	1                       ##   On action: 1
Lset23 = Ltmp29-Leh_func_begin0         ## >> Call Site 9 <<
	.long	Lset23
Lset24 = Ltmp30-Ltmp29                  ##   Call between Ltmp29 and Ltmp30
	.long	Lset24
Lset25 = Ltmp31-Leh_func_begin0         ##     jumps to Ltmp31
	.long	Lset25
	.byte	0                       ##   On action: cleanup
Lset26 = Ltmp30-Leh_func_begin0         ## >> Call Site 10 <<
	.long	Lset26
Lset27 = Ltmp32-Ltmp30                  ##   Call between Ltmp30 and Ltmp32
	.long	Lset27
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset28 = Ltmp32-Leh_func_begin0         ## >> Call Site 11 <<
	.long	Lset28
Lset29 = Ltmp33-Ltmp32                  ##   Call between Ltmp32 and Ltmp33
	.long	Lset29
Lset30 = Ltmp34-Leh_func_begin0         ##     jumps to Ltmp34
	.long	Lset30
	.byte	1                       ##   On action: 1
Lset31 = Ltmp33-Leh_func_begin0         ## >> Call Site 12 <<
	.long	Lset31
Lset32 = Leh_func_end0-Ltmp33           ##   Call between Ltmp33 and Leh_func_end0
	.long	Lset32
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin1:
	.cfi_lsda 16, Lexception1
## BB#0:
	pushq	%rbp
Ltmp74:
	.cfi_def_cfa_offset 16
Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              ## imm = 0x1B0
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	-216(%rbp), %rsi
Ltmp40:
	leaq	-240(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp41:
	jmp	LBB1_1
LBB1_1:
	leaq	-240(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -281(%rbp)         ## 1-byte Spill
## BB#2:
	movb	-281(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB1_3
	jmp	LBB1_28
LBB1_3:
	movq	-224(%rbp), %rax
	movq	%rax, -200(%rbp)
Ltmp42:
	movq	%rax, %rdi
	callq	_strlen
Ltmp43:
	movq	%rax, -296(%rbp)        ## 8-byte Spill
	jmp	LBB1_4
LBB1_4:                                 ## %_ZNSt3__111char_traitsIcE6lengthEPKc.exit
	jmp	LBB1_5
LBB1_5:
	leaq	-272(%rbp), %rax
	movq	-296(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -264(%rbp)
	movq	-216(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-184(%rbp), %rax
	movq	-192(%rbp), %rdx
	movq	%rax, -152(%rbp)
	movq	%rdx, -160(%rbp)
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rsi), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	%rdx, -136(%rbp)
	movq	-136(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-224(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edi
	movq	%rsi, -304(%rbp)        ## 8-byte Spill
	movl	%edi, -308(%rbp)        ## 4-byte Spill
## BB#6:
	movl	-308(%rbp), %eax        ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB1_8
## BB#7:
	movq	-224(%rbp), %rax
	addq	-264(%rbp), %rax
	movq	%rax, -320(%rbp)        ## 8-byte Spill
	jmp	LBB1_9
LBB1_8:
	movq	-224(%rbp), %rax
	movq	%rax, -320(%rbp)        ## 8-byte Spill
LBB1_9:
	movq	-320(%rbp), %rax        ## 8-byte Reload
	movq	-224(%rbp), %rcx
	addq	-264(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rsi), %rsi
	addq	%rsi, %rdx
	movq	-216(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rdi), %rdi
	addq	%rdi, %rsi
	movq	%rsi, -80(%rbp)
	movq	-80(%rbp), %rsi
	movl	144(%rsi), %r8d
	movl	$-1, -4(%rbp)
	movl	%r8d, -8(%rbp)
	movl	-4(%rbp), %r8d
	cmpl	-8(%rbp), %r8d
	movq	%rax, -328(%rbp)        ## 8-byte Spill
	movq	%rcx, -336(%rbp)        ## 8-byte Spill
	movq	%rdx, -344(%rbp)        ## 8-byte Spill
	movq	%rsi, -352(%rbp)        ## 8-byte Spill
	jne	LBB1_18
## BB#10:
	movq	-352(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -40(%rbp)
	movb	$32, -41(%rbp)
	movq	-40(%rbp), %rsi
Ltmp44:
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp45:
	jmp	LBB1_11
LBB1_11:                                ## %.noexc
	leaq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
Ltmp46:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp47:
	movq	%rax, -360(%rbp)        ## 8-byte Spill
	jmp	LBB1_12
LBB1_12:                                ## %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
	movb	-41(%rbp), %al
	movq	-360(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-17(%rbp), %edi
Ltmp48:
	movl	%edi, -364(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-364(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -376(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-376(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp49:
	movb	%al, -377(%rbp)         ## 1-byte Spill
	jmp	LBB1_16
LBB1_13:
Ltmp50:
	movl	%edx, %ecx
	movq	%rax, -64(%rbp)
	movl	%ecx, -68(%rbp)
Ltmp51:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp52:
	jmp	LBB1_14
LBB1_14:
	movq	-64(%rbp), %rax
	movl	-68(%rbp), %ecx
	movq	%rax, -392(%rbp)        ## 8-byte Spill
	movl	%ecx, -396(%rbp)        ## 4-byte Spill
	jmp	LBB1_26
LBB1_15:
Ltmp53:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -400(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB1_16:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
Ltmp54:
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp55:
	jmp	LBB1_17
LBB1_17:                                ## %.noexc1
	movb	-377(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %ecx
	movq	-352(%rbp), %rdx        ## 8-byte Reload
	movl	%ecx, 144(%rdx)
LBB1_18:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit
	movq	-352(%rbp), %rax        ## 8-byte Reload
	movl	144(%rax), %ecx
	movb	%cl, %dl
	movb	%dl, -401(%rbp)         ## 1-byte Spill
## BB#19:
	movq	-272(%rbp), %rdi
Ltmp56:
	movb	-401(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %r9d
	movq	-304(%rbp), %rsi        ## 8-byte Reload
	movq	-328(%rbp), %rdx        ## 8-byte Reload
	movq	-336(%rbp), %rcx        ## 8-byte Reload
	movq	-344(%rbp), %r8         ## 8-byte Reload
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp57:
	movq	%rax, -416(%rbp)        ## 8-byte Spill
	jmp	LBB1_20
LBB1_20:
	leaq	-280(%rbp), %rax
	movq	-416(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -280(%rbp)
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB1_27
## BB#21:
	movq	-216(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movl	$5, -124(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$5, -108(%rbp)
	movq	-104(%rbp), %rax
	movl	32(%rax), %edx
	orl	$5, %edx
Ltmp58:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp59:
	jmp	LBB1_22
LBB1_22:                                ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
	jmp	LBB1_23
LBB1_23:
	jmp	LBB1_27
LBB1_24:
Ltmp65:
	movl	%edx, %ecx
	movq	%rax, -248(%rbp)
	movl	%ecx, -252(%rbp)
	jmp	LBB1_31
LBB1_25:
Ltmp60:
	movl	%edx, %ecx
	movq	%rax, -392(%rbp)        ## 8-byte Spill
	movl	%ecx, -396(%rbp)        ## 4-byte Spill
LBB1_26:                                ## %.body
	movq	-392(%rbp), %rax        ## 8-byte Reload
	movl	-396(%rbp), %ecx        ## 4-byte Reload
	movq	%rax, -248(%rbp)
	movl	%ecx, -252(%rbp)
Ltmp61:
	leaq	-240(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp62:
	jmp	LBB1_30
LBB1_27:
	jmp	LBB1_28
LBB1_28:
Ltmp63:
	leaq	-240(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp64:
	jmp	LBB1_29
LBB1_29:
	jmp	LBB1_33
LBB1_30:
	jmp	LBB1_31
LBB1_31:
	movq	-248(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-216(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp66:
	movq	%rax, -424(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp67:
	jmp	LBB1_32
LBB1_32:
	callq	___cxa_end_catch
LBB1_33:
	movq	-216(%rbp), %rax
	addq	$432, %rsp              ## imm = 0x1B0
	popq	%rbp
	ret
LBB1_34:
Ltmp68:
	movl	%edx, %ecx
	movq	%rax, -248(%rbp)
	movl	%ecx, -252(%rbp)
Ltmp69:
	callq	___cxa_end_catch
Ltmp70:
	jmp	LBB1_35
LBB1_35:
	jmp	LBB1_36
LBB1_36:
	movq	-248(%rbp), %rdi
	callq	__Unwind_Resume
LBB1_37:
Ltmp71:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -428(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end1:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table1:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\257\201"             ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	 "\234\001"             ## Call site table length
Lset33 = Ltmp40-Leh_func_begin1         ## >> Call Site 1 <<
	.long	Lset33
Lset34 = Ltmp41-Ltmp40                  ##   Call between Ltmp40 and Ltmp41
	.long	Lset34
Lset35 = Ltmp65-Leh_func_begin1         ##     jumps to Ltmp65
	.long	Lset35
	.byte	7                       ##   On action: 4
Lset36 = Ltmp42-Leh_func_begin1         ## >> Call Site 2 <<
	.long	Lset36
Lset37 = Ltmp45-Ltmp42                  ##   Call between Ltmp42 and Ltmp45
	.long	Lset37
Lset38 = Ltmp60-Leh_func_begin1         ##     jumps to Ltmp60
	.long	Lset38
	.byte	7                       ##   On action: 4
Lset39 = Ltmp46-Leh_func_begin1         ## >> Call Site 3 <<
	.long	Lset39
Lset40 = Ltmp49-Ltmp46                  ##   Call between Ltmp46 and Ltmp49
	.long	Lset40
Lset41 = Ltmp50-Leh_func_begin1         ##     jumps to Ltmp50
	.long	Lset41
	.byte	5                       ##   On action: 3
Lset42 = Ltmp51-Leh_func_begin1         ## >> Call Site 4 <<
	.long	Lset42
Lset43 = Ltmp52-Ltmp51                  ##   Call between Ltmp51 and Ltmp52
	.long	Lset43
Lset44 = Ltmp53-Leh_func_begin1         ##     jumps to Ltmp53
	.long	Lset44
	.byte	11                      ##   On action: 6
Lset45 = Ltmp54-Leh_func_begin1         ## >> Call Site 5 <<
	.long	Lset45
Lset46 = Ltmp59-Ltmp54                  ##   Call between Ltmp54 and Ltmp59
	.long	Lset46
Lset47 = Ltmp60-Leh_func_begin1         ##     jumps to Ltmp60
	.long	Lset47
	.byte	7                       ##   On action: 4
Lset48 = Ltmp61-Leh_func_begin1         ## >> Call Site 6 <<
	.long	Lset48
Lset49 = Ltmp62-Ltmp61                  ##   Call between Ltmp61 and Ltmp62
	.long	Lset49
Lset50 = Ltmp71-Leh_func_begin1         ##     jumps to Ltmp71
	.long	Lset50
	.byte	7                       ##   On action: 4
Lset51 = Ltmp63-Leh_func_begin1         ## >> Call Site 7 <<
	.long	Lset51
Lset52 = Ltmp64-Ltmp63                  ##   Call between Ltmp63 and Ltmp64
	.long	Lset52
Lset53 = Ltmp65-Leh_func_begin1         ##     jumps to Ltmp65
	.long	Lset53
	.byte	7                       ##   On action: 4
Lset54 = Ltmp64-Leh_func_begin1         ## >> Call Site 8 <<
	.long	Lset54
Lset55 = Ltmp66-Ltmp64                  ##   Call between Ltmp64 and Ltmp66
	.long	Lset55
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset56 = Ltmp66-Leh_func_begin1         ## >> Call Site 9 <<
	.long	Lset56
Lset57 = Ltmp67-Ltmp66                  ##   Call between Ltmp66 and Ltmp67
	.long	Lset57
Lset58 = Ltmp68-Leh_func_begin1         ##     jumps to Ltmp68
	.long	Lset58
	.byte	0                       ##   On action: cleanup
Lset59 = Ltmp67-Leh_func_begin1         ## >> Call Site 10 <<
	.long	Lset59
Lset60 = Ltmp69-Ltmp67                  ##   Call between Ltmp67 and Ltmp69
	.long	Lset60
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset61 = Ltmp69-Leh_func_begin1         ## >> Call Site 11 <<
	.long	Lset61
Lset62 = Ltmp70-Ltmp69                  ##   Call between Ltmp69 and Ltmp70
	.long	Lset62
Lset63 = Ltmp71-Leh_func_begin1         ##     jumps to Ltmp71
	.long	Lset63
	.byte	7                       ##   On action: 4
Lset64 = Ltmp70-Leh_func_begin1         ## >> Call Site 12 <<
	.long	Lset64
Lset65 = Leh_func_end1-Ltmp70           ##   Call between Ltmp70 and Leh_func_end1
	.long	Lset65
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	1                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 2
	.byte	1                       ## >> Action Record 4 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 5 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 4
	.byte	1                       ## >> Action Record 6 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 5
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.align	4, 0x90
__ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE: ## @_ZNSt3__1rsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_istreamIT_T0_EES9_RNS_12basic_stringIS6_S7_T1_EE
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin2:
	.cfi_lsda 16, Lexception2
## BB#0:
	pushq	%rbp
Ltmp107:
	.cfi_def_cfa_offset 16
Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$704, %rsp              ## imm = 0x2C0
	movq	%rdi, -520(%rbp)
	movq	%rsi, -528(%rbp)
	movq	-520(%rbp), %rsi
Ltmp77:
	leaq	-536(%rbp), %rdi
	xorl	%edx, %edx
	callq	__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b
Ltmp78:
	jmp	LBB2_1
LBB2_1:
	leaq	-536(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -594(%rbp)         ## 1-byte Spill
## BB#2:
	movb	-594(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB2_3
	jmp	LBB2_51
LBB2_3:
	movq	-528(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rcx
	movq	%rcx, -320(%rbp)
	movq	-320(%rbp), %rcx
	movq	%rcx, -312(%rbp)
	movq	-312(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rax, -608(%rbp)        ## 8-byte Spill
	je	LBB2_5
## BB#4:
	leaq	-501(%rbp), %rax
	movq	-608(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -352(%rbp)
	movq	-352(%rbp), %rdx
	movq	%rdx, -344(%rbp)
	movq	-344(%rbp), %rdx
	movq	%rdx, -336(%rbp)
	movq	-336(%rbp), %rdx
	movq	16(%rdx), %rdx
	movb	$0, -501(%rbp)
	movq	%rdx, -360(%rbp)
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	movb	(%rax), %sil
	movq	-360(%rbp), %rax
	movb	%sil, (%rax)
	movq	%rcx, -392(%rbp)
	movq	$0, -400(%rbp)
	movq	-392(%rbp), %rax
	movq	-400(%rbp), %rdx
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	LBB2_6
LBB2_5:
	leaq	-502(%rbp), %rax
	movq	-608(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -424(%rbp)
	movq	-424(%rbp), %rdx
	movq	%rdx, -416(%rbp)
	movq	-416(%rbp), %rdx
	movq	%rdx, -408(%rbp)
	movq	-408(%rbp), %rdx
	addq	$1, %rdx
	movb	$0, -502(%rbp)
	movq	%rdx, -432(%rbp)
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movb	(%rax), %sil
	movq	-432(%rbp), %rax
	movb	%sil, (%rax)
	movq	%rcx, -464(%rbp)
	movq	$0, -472(%rbp)
	movq	-464(%rbp), %rax
	movq	-472(%rbp), %rdx
	shlq	$1, %rdx
	movb	%dl, %sil
	movq	%rax, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	movb	%sil, (%rax)
LBB2_6:                                 ## %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5clearEv.exit
	movq	-520(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -616(%rbp)        ## 8-byte Spill
## BB#7:
	movq	-616(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -560(%rbp)
	cmpq	$0, -560(%rbp)
	jg	LBB2_10
## BB#8:
	movq	-528(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	$-1, -216(%rbp)
	movq	-216(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -560(%rbp)
	jmp	LBB2_10
LBB2_9:
Ltmp98:
	movl	%edx, %ecx
	movq	%rax, -544(%rbp)
	movl	%ecx, -548(%rbp)
	jmp	LBB2_28
LBB2_10:
	cmpq	$0, -560(%rbp)
	jg	LBB2_12
## BB#11:
	movabsq	$9223372036854775807, %rax ## imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -560(%rbp)
LBB2_12:
	movq	$0, -568(%rbp)
	movq	-520(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
Ltmp81:
	leaq	-584(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp82:
	jmp	LBB2_13
LBB2_13:
	leaq	-584(%rbp), %rax
	movq	%rax, -56(%rbp)
Ltmp83:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp84:
	movq	%rax, -624(%rbp)        ## 8-byte Spill
	jmp	LBB2_14
LBB2_14:                                ## %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit
	movq	-624(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -632(%rbp)        ## 8-byte Spill
## BB#15:
Ltmp88:
	leaq	-584(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp89:
	jmp	LBB2_16
LBB2_16:
	movq	-632(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -576(%rbp)
	movl	$0, -588(%rbp)
LBB2_17:                                ## =>This Inner Loop Header: Depth=1
	movq	-568(%rbp), %rax
	cmpq	-560(%rbp), %rax
	jge	LBB2_45
## BB#18:                               ##   in Loop: Header=BB2_17 Depth=1
	movq	-520(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -640(%rbp)        ## 8-byte Spill
## BB#19:                               ##   in Loop: Header=BB2_17 Depth=1
	movq	-640(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdx
	cmpq	32(%rcx), %rdx
	movq	%rcx, -648(%rbp)        ## 8-byte Spill
	jne	LBB2_22
## BB#20:                               ##   in Loop: Header=BB2_17 Depth=1
	movq	-648(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	72(%rcx), %rcx
Ltmp90:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp91:
	movl	%eax, -652(%rbp)        ## 4-byte Spill
	jmp	LBB2_21
LBB2_21:                                ## %.noexc3
                                        ##   in Loop: Header=BB2_17 Depth=1
	movl	-652(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -8(%rbp)
	jmp	LBB2_23
LBB2_22:                                ##   in Loop: Header=BB2_17 Depth=1
	movq	-648(%rbp), %rax        ## 8-byte Reload
	movq	24(%rax), %rcx
	movb	(%rcx), %dl
	movb	%dl, -1(%rbp)
	movzbl	-1(%rbp), %esi
	movl	%esi, -8(%rbp)
LBB2_23:                                ## %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sgetcEv.exit
                                        ##   in Loop: Header=BB2_17 Depth=1
	movl	-8(%rbp), %eax
	movl	%eax, -656(%rbp)        ## 4-byte Spill
## BB#24:                               ##   in Loop: Header=BB2_17 Depth=1
	movl	-656(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -592(%rbp)
	movl	-592(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movl	$-1, -24(%rbp)
	movl	-20(%rbp), %ecx
	cmpl	-24(%rbp), %ecx
	jne	LBB2_31
## BB#25:
	movl	-588(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -588(%rbp)
	jmp	LBB2_45
LBB2_26:
Ltmp85:
	movl	%edx, %ecx
	movq	%rax, -544(%rbp)
	movl	%ecx, -548(%rbp)
Ltmp86:
	leaq	-584(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp87:
	jmp	LBB2_27
LBB2_27:
	jmp	LBB2_28
LBB2_28:
	movq	-544(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-520(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp99:
	movq	%rax, -664(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp100:
	jmp	LBB2_29
LBB2_29:
	callq	___cxa_end_catch
LBB2_30:
	movq	-520(%rbp), %rax
	addq	$704, %rsp              ## imm = 0x2C0
	popq	%rbp
	ret
LBB2_31:                                ##   in Loop: Header=BB2_17 Depth=1
	movl	-592(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -593(%rbp)
	movq	-576(%rbp), %rdx
	movb	-593(%rbp), %cl
	movq	%rdx, -64(%rbp)
	movl	$16384, -68(%rbp)       ## imm = 0x4000
	movb	%cl, -69(%rbp)
	movq	-64(%rbp), %rdx
	movsbl	-69(%rbp), %edi
	movq	%rdx, -672(%rbp)        ## 8-byte Spill
	callq	__Z7isasciii
	cmpl	$0, %eax
	je	LBB2_33
## BB#32:                               ##   in Loop: Header=BB2_17 Depth=1
	movsbl	-69(%rbp), %eax
	movslq	%eax, %rcx
	movq	-672(%rbp), %rdx        ## 8-byte Reload
	movq	16(%rdx), %rsi
	movl	(%rsi,%rcx,4), %eax
	andl	-68(%rbp), %eax
	movl	%eax, -676(%rbp)        ## 4-byte Spill
	jmp	LBB2_34
LBB2_33:                                ##   in Loop: Header=BB2_17 Depth=1
	movl	$0, %eax
	movl	%eax, -676(%rbp)        ## 4-byte Spill
	jmp	LBB2_34
LBB2_34:                                ## %_ZNKSt3__15ctypeIcE2isEjc.exit
                                        ##   in Loop: Header=BB2_17 Depth=1
	movl	-676(%rbp), %eax        ## 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -677(%rbp)         ## 1-byte Spill
## BB#35:                               ##   in Loop: Header=BB2_17 Depth=1
	movb	-677(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB2_36
	jmp	LBB2_37
LBB2_36:
	jmp	LBB2_45
LBB2_37:                                ##   in Loop: Header=BB2_17 Depth=1
	movq	-528(%rbp), %rdi
	movsbl	-593(%rbp), %esi
Ltmp92:
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc
Ltmp93:
	jmp	LBB2_38
LBB2_38:                                ##   in Loop: Header=BB2_17 Depth=1
	movq	-568(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -568(%rbp)
	movq	-520(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -688(%rbp)        ## 8-byte Spill
## BB#39:                               ##   in Loop: Header=BB2_17 Depth=1
	movq	-688(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	24(%rcx), %rdx
	cmpq	32(%rcx), %rdx
	movq	%rcx, -696(%rbp)        ## 8-byte Spill
	jne	LBB2_42
## BB#40:                               ##   in Loop: Header=BB2_17 Depth=1
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	80(%rcx), %rcx
Ltmp94:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp95:
	movl	%eax, -700(%rbp)        ## 4-byte Spill
	jmp	LBB2_41
LBB2_41:                                ## %.noexc
                                        ##   in Loop: Header=BB2_17 Depth=1
	movl	-700(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -96(%rbp)
	jmp	LBB2_43
LBB2_42:                                ##   in Loop: Header=BB2_17 Depth=1
	movq	-696(%rbp), %rax        ## 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, 24(%rax)
	movb	(%rcx), %sil
	movb	%sil, -89(%rbp)
	movzbl	-89(%rbp), %edi
	movl	%edi, -96(%rbp)
LBB2_43:                                ## %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6sbumpcEv.exit
                                        ##   in Loop: Header=BB2_17 Depth=1
## BB#44:                               ##   in Loop: Header=BB2_17 Depth=1
	jmp	LBB2_17
LBB2_45:
	movq	-520(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	-120(%rbp), %rcx
	movq	%rcx, 24(%rax)
## BB#46:
	cmpq	$0, -568(%rbp)
	jne	LBB2_48
## BB#47:
	movl	-588(%rbp), %eax
	orl	$4, %eax
	movl	%eax, -588(%rbp)
LBB2_48:
	movq	-520(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movl	-588(%rbp), %edx
	movq	%rax, -256(%rbp)
	movl	%edx, -260(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -240(%rbp)
	movl	%edx, -244(%rbp)
	movq	-240(%rbp), %rax
	movl	32(%rax), %esi
	orl	%edx, %esi
Ltmp96:
	movq	%rax, %rdi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp97:
	jmp	LBB2_49
LBB2_49:                                ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit1
	jmp	LBB2_50
LBB2_50:
	jmp	LBB2_54
LBB2_51:
	movq	-520(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -296(%rbp)
	movl	$4, -300(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -280(%rbp)
	movl	$4, -284(%rbp)
	movq	-280(%rbp), %rax
	movl	32(%rax), %edx
	orl	$4, %edx
Ltmp79:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp80:
	jmp	LBB2_52
LBB2_52:                                ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
	jmp	LBB2_53
LBB2_53:
	jmp	LBB2_54
LBB2_54:
	jmp	LBB2_30
LBB2_55:
Ltmp101:
	movl	%edx, %ecx
	movq	%rax, -544(%rbp)
	movl	%ecx, -548(%rbp)
Ltmp102:
	callq	___cxa_end_catch
Ltmp103:
	jmp	LBB2_56
LBB2_56:
	jmp	LBB2_57
LBB2_57:
	movq	-544(%rbp), %rdi
	callq	__Unwind_Resume
LBB2_58:
Ltmp104:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -704(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end2:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table2:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\213\201"             ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	 "\202\001"             ## Call site table length
Lset66 = Ltmp77-Leh_func_begin2         ## >> Call Site 1 <<
	.long	Lset66
Lset67 = Ltmp82-Ltmp77                  ##   Call between Ltmp77 and Ltmp82
	.long	Lset67
Lset68 = Ltmp98-Leh_func_begin2         ##     jumps to Ltmp98
	.long	Lset68
	.byte	1                       ##   On action: 1
Lset69 = Ltmp83-Leh_func_begin2         ## >> Call Site 2 <<
	.long	Lset69
Lset70 = Ltmp84-Ltmp83                  ##   Call between Ltmp83 and Ltmp84
	.long	Lset70
Lset71 = Ltmp85-Leh_func_begin2         ##     jumps to Ltmp85
	.long	Lset71
	.byte	1                       ##   On action: 1
Lset72 = Ltmp88-Leh_func_begin2         ## >> Call Site 3 <<
	.long	Lset72
Lset73 = Ltmp91-Ltmp88                  ##   Call between Ltmp88 and Ltmp91
	.long	Lset73
Lset74 = Ltmp98-Leh_func_begin2         ##     jumps to Ltmp98
	.long	Lset74
	.byte	1                       ##   On action: 1
Lset75 = Ltmp86-Leh_func_begin2         ## >> Call Site 4 <<
	.long	Lset75
Lset76 = Ltmp87-Ltmp86                  ##   Call between Ltmp86 and Ltmp87
	.long	Lset76
Lset77 = Ltmp104-Leh_func_begin2        ##     jumps to Ltmp104
	.long	Lset77
	.byte	1                       ##   On action: 1
Lset78 = Ltmp87-Leh_func_begin2         ## >> Call Site 5 <<
	.long	Lset78
Lset79 = Ltmp99-Ltmp87                  ##   Call between Ltmp87 and Ltmp99
	.long	Lset79
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset80 = Ltmp99-Leh_func_begin2         ## >> Call Site 6 <<
	.long	Lset80
Lset81 = Ltmp100-Ltmp99                 ##   Call between Ltmp99 and Ltmp100
	.long	Lset81
Lset82 = Ltmp101-Leh_func_begin2        ##     jumps to Ltmp101
	.long	Lset82
	.byte	0                       ##   On action: cleanup
Lset83 = Ltmp100-Leh_func_begin2        ## >> Call Site 7 <<
	.long	Lset83
Lset84 = Ltmp92-Ltmp100                 ##   Call between Ltmp100 and Ltmp92
	.long	Lset84
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset85 = Ltmp92-Leh_func_begin2         ## >> Call Site 8 <<
	.long	Lset85
Lset86 = Ltmp80-Ltmp92                  ##   Call between Ltmp92 and Ltmp80
	.long	Lset86
Lset87 = Ltmp98-Leh_func_begin2         ##     jumps to Ltmp98
	.long	Lset87
	.byte	1                       ##   On action: 1
Lset88 = Ltmp102-Leh_func_begin2        ## >> Call Site 9 <<
	.long	Lset88
Lset89 = Ltmp103-Ltmp102                ##   Call between Ltmp102 and Ltmp103
	.long	Lset89
Lset90 = Ltmp104-Leh_func_begin2        ##     jumps to Ltmp104
	.long	Lset90
	.byte	1                       ##   On action: 1
Lset91 = Ltmp103-Leh_func_begin2        ## >> Call Site 10 <<
	.long	Lset91
Lset92 = Leh_func_end2-Ltmp103          ##   Call between Ltmp103 and Leh_func_end2
	.long	Lset92
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.align	4, 0x90
__ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: ## @_ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin3:
	.cfi_lsda 16, Lexception3
## BB#0:
	pushq	%rbp
Ltmp142:
	.cfi_def_cfa_offset 16
Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$928, %rsp              ## imm = 0x3A0
	movq	%rdi, -640(%rbp)
	movq	%rsi, -648(%rbp)
	movq	-640(%rbp), %rsi
Ltmp110:
	leaq	-664(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp111:
	jmp	LBB3_1
LBB3_1:
	leaq	-664(%rbp), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -705(%rbp)         ## 1-byte Spill
## BB#2:
	movb	-705(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB3_3
	jmp	LBB3_41
LBB3_3:
	movq	-648(%rbp), %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rcx
	movq	%rcx, -608(%rbp)
	movq	-608(%rbp), %rcx
	movq	%rcx, -600(%rbp)
	movq	-600(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rax, -720(%rbp)        ## 8-byte Spill
	je	LBB3_5
## BB#4:
	movq	-720(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -568(%rbp)
	movq	-568(%rbp), %rcx
	movq	%rcx, -560(%rbp)
	movq	-560(%rbp), %rcx
	movq	%rcx, -552(%rbp)
	movq	-552(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -728(%rbp)        ## 8-byte Spill
	jmp	LBB3_6
LBB3_5:
	movq	-720(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -592(%rbp)
	movq	-592(%rbp), %rcx
	movq	%rcx, -584(%rbp)
	movq	-584(%rbp), %rcx
	movq	%rcx, -576(%rbp)
	movq	-576(%rbp), %rcx
	movzbl	(%rcx), %edx
	sarl	$1, %edx
	movslq	%edx, %rcx
	movq	%rcx, -728(%rbp)        ## 8-byte Spill
LBB3_6:                                 ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv.exit
	movq	-728(%rbp), %rax        ## 8-byte Reload
	leaq	-696(%rbp), %rcx
	movq	%rax, -688(%rbp)
	movq	-640(%rbp), %rax
	movq	%rcx, -504(%rbp)
	movq	%rax, -512(%rbp)
	movq	-504(%rbp), %rax
	movq	-512(%rbp), %rcx
	movq	%rax, -472(%rbp)
	movq	%rcx, -480(%rbp)
	movq	-472(%rbp), %rax
	movq	-480(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -464(%rbp)
	movq	-464(%rbp), %rcx
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-648(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rcx
	movq	%rcx, -416(%rbp)
	movq	-416(%rbp), %rcx
	movq	%rcx, -408(%rbp)
	movq	-408(%rbp), %rcx
	movzbl	(%rcx), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	movq	%rax, -736(%rbp)        ## 8-byte Spill
	je	LBB3_8
## BB#7:
	movq	-736(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	movq	-368(%rbp), %rcx
	movq	%rcx, -360(%rbp)
	movq	-360(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -744(%rbp)        ## 8-byte Spill
	jmp	LBB3_9
LBB3_8:
	movq	-736(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rcx
	movq	%rcx, -392(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, -384(%rbp)
	movq	-384(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -744(%rbp)        ## 8-byte Spill
LBB3_9:                                 ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
	movq	-744(%rbp), %rax        ## 8-byte Reload
	movq	-640(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	%rax, -752(%rbp)        ## 8-byte Spill
	movl	%esi, -756(%rbp)        ## 4-byte Spill
## BB#10:
	movl	-756(%rbp), %eax        ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB3_15
## BB#11:
	movq	-648(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, -240(%rbp)
	movq	-240(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rax, -768(%rbp)        ## 8-byte Spill
	je	LBB3_13
## BB#12:
	movq	-768(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	movq	%rcx, -184(%rbp)
	movq	-184(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -776(%rbp)        ## 8-byte Spill
	jmp	LBB3_14
LBB3_13:
	movq	-768(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rcx
	movq	%rcx, -216(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, -208(%rbp)
	movq	-208(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -776(%rbp)        ## 8-byte Spill
LBB3_14:                                ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit2
	movq	-776(%rbp), %rax        ## 8-byte Reload
	addq	-688(%rbp), %rax
	movq	%rax, -784(%rbp)        ## 8-byte Spill
	jmp	LBB3_19
LBB3_15:
	movq	-648(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	movzbl	(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rax, -792(%rbp)        ## 8-byte Spill
	je	LBB3_17
## BB#16:
	movq	-792(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -800(%rbp)        ## 8-byte Spill
	jmp	LBB3_18
LBB3_17:
	movq	-792(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -800(%rbp)        ## 8-byte Spill
LBB3_18:                                ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit3
	movq	-800(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -784(%rbp)        ## 8-byte Spill
LBB3_19:
	movq	-784(%rbp), %rax        ## 8-byte Reload
	movq	-648(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	movq	%rax, -808(%rbp)        ## 8-byte Spill
	movq	%rcx, -816(%rbp)        ## 8-byte Spill
	je	LBB3_21
## BB#20:
	movq	-816(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -824(%rbp)        ## 8-byte Spill
	jmp	LBB3_22
LBB3_21:
	movq	-816(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -824(%rbp)        ## 8-byte Spill
LBB3_22:                                ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit4
	movq	-824(%rbp), %rax        ## 8-byte Reload
	addq	-688(%rbp), %rax
	movq	-640(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	-24(%rdx), %rdx
	addq	%rdx, %rcx
	movq	-640(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-24(%rsi), %rsi
	addq	%rsi, %rdx
	movq	%rdx, -352(%rbp)
	movq	-352(%rbp), %rdx
	movl	144(%rdx), %edi
	movl	$-1, -276(%rbp)
	movl	%edi, -280(%rbp)
	movl	-276(%rbp), %edi
	cmpl	-280(%rbp), %edi
	movq	%rax, -832(%rbp)        ## 8-byte Spill
	movq	%rcx, -840(%rbp)        ## 8-byte Spill
	movq	%rdx, -848(%rbp)        ## 8-byte Spill
	jne	LBB3_31
## BB#23:
	movq	-848(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -312(%rbp)
	movb	$32, -313(%rbp)
	movq	-312(%rbp), %rsi
Ltmp112:
	leaq	-328(%rbp), %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp113:
	jmp	LBB3_24
LBB3_24:                                ## %.noexc
	leaq	-328(%rbp), %rax
	movq	%rax, -304(%rbp)
Ltmp114:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp115:
	movq	%rax, -856(%rbp)        ## 8-byte Spill
	jmp	LBB3_25
LBB3_25:                                ## %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
	movb	-313(%rbp), %al
	movq	-856(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -288(%rbp)
	movb	%al, -289(%rbp)
	movq	-288(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-289(%rbp), %edi
Ltmp116:
	movl	%edi, -860(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-860(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -872(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-872(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp117:
	movb	%al, -873(%rbp)         ## 1-byte Spill
	jmp	LBB3_29
LBB3_26:
Ltmp118:
	movl	%edx, %ecx
	movq	%rax, -336(%rbp)
	movl	%ecx, -340(%rbp)
Ltmp119:
	leaq	-328(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp120:
	jmp	LBB3_27
LBB3_27:
	movq	-336(%rbp), %rax
	movl	-340(%rbp), %ecx
	movq	%rax, -888(%rbp)        ## 8-byte Spill
	movl	%ecx, -892(%rbp)        ## 4-byte Spill
	jmp	LBB3_39
LBB3_28:
Ltmp121:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -896(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB3_29:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit.i
Ltmp122:
	leaq	-328(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp123:
	jmp	LBB3_30
LBB3_30:                                ## %.noexc1
	movb	-873(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %ecx
	movq	-848(%rbp), %rdx        ## 8-byte Reload
	movl	%ecx, 144(%rdx)
LBB3_31:                                ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv.exit
	movq	-848(%rbp), %rax        ## 8-byte Reload
	movl	144(%rax), %ecx
	movb	%cl, %dl
	movb	%dl, -897(%rbp)         ## 1-byte Spill
## BB#32:
	movq	-696(%rbp), %rdi
Ltmp124:
	movb	-897(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %r9d
	movq	-752(%rbp), %rsi        ## 8-byte Reload
	movq	-808(%rbp), %rdx        ## 8-byte Reload
	movq	-832(%rbp), %rcx        ## 8-byte Reload
	movq	-840(%rbp), %r8         ## 8-byte Reload
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp125:
	movq	%rax, -912(%rbp)        ## 8-byte Spill
	jmp	LBB3_33
LBB3_33:
	leaq	-704(%rbp), %rax
	movq	-912(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -704(%rbp)
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB3_40
## BB#34:
	movq	-640(%rbp), %rax
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -536(%rbp)
	movl	$5, -540(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -520(%rbp)
	movl	$5, -524(%rbp)
	movq	-520(%rbp), %rax
	movl	32(%rax), %edx
	orl	$5, %edx
Ltmp126:
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	__ZNSt3__18ios_base5clearEj
Ltmp127:
	jmp	LBB3_35
LBB3_35:                                ## %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj.exit
	jmp	LBB3_36
LBB3_36:
	jmp	LBB3_40
LBB3_37:
Ltmp133:
	movl	%edx, %ecx
	movq	%rax, -672(%rbp)
	movl	%ecx, -676(%rbp)
	jmp	LBB3_44
LBB3_38:
Ltmp128:
	movl	%edx, %ecx
	movq	%rax, -888(%rbp)        ## 8-byte Spill
	movl	%ecx, -892(%rbp)        ## 4-byte Spill
LBB3_39:                                ## %.body
	movq	-888(%rbp), %rax        ## 8-byte Reload
	movl	-892(%rbp), %ecx        ## 4-byte Reload
	movq	%rax, -672(%rbp)
	movl	%ecx, -676(%rbp)
Ltmp129:
	leaq	-664(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp130:
	jmp	LBB3_43
LBB3_40:
	jmp	LBB3_41
LBB3_41:
Ltmp131:
	leaq	-664(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp132:
	jmp	LBB3_42
LBB3_42:
	jmp	LBB3_46
LBB3_43:
	jmp	LBB3_44
LBB3_44:
	movq	-672(%rbp), %rdi
	callq	___cxa_begin_catch
	movq	-640(%rbp), %rdi
	movq	(%rdi), %rcx
	movq	-24(%rcx), %rcx
	addq	%rcx, %rdi
Ltmp134:
	movq	%rax, -920(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp135:
	jmp	LBB3_45
LBB3_45:
	callq	___cxa_end_catch
LBB3_46:
	movq	-640(%rbp), %rax
	addq	$928, %rsp              ## imm = 0x3A0
	popq	%rbp
	ret
LBB3_47:
Ltmp136:
	movl	%edx, %ecx
	movq	%rax, -672(%rbp)
	movl	%ecx, -676(%rbp)
Ltmp137:
	callq	___cxa_end_catch
Ltmp138:
	jmp	LBB3_48
LBB3_48:
	jmp	LBB3_49
LBB3_49:
	movq	-672(%rbp), %rdi
	callq	__Unwind_Resume
LBB3_50:
Ltmp139:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -924(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end3:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table3:
Lexception3:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\257\201"             ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	 "\234\001"             ## Call site table length
Lset93 = Ltmp110-Leh_func_begin3        ## >> Call Site 1 <<
	.long	Lset93
Lset94 = Ltmp111-Ltmp110                ##   Call between Ltmp110 and Ltmp111
	.long	Lset94
Lset95 = Ltmp133-Leh_func_begin3        ##     jumps to Ltmp133
	.long	Lset95
	.byte	7                       ##   On action: 4
Lset96 = Ltmp112-Leh_func_begin3        ## >> Call Site 2 <<
	.long	Lset96
Lset97 = Ltmp113-Ltmp112                ##   Call between Ltmp112 and Ltmp113
	.long	Lset97
Lset98 = Ltmp128-Leh_func_begin3        ##     jumps to Ltmp128
	.long	Lset98
	.byte	7                       ##   On action: 4
Lset99 = Ltmp114-Leh_func_begin3        ## >> Call Site 3 <<
	.long	Lset99
Lset100 = Ltmp117-Ltmp114               ##   Call between Ltmp114 and Ltmp117
	.long	Lset100
Lset101 = Ltmp118-Leh_func_begin3       ##     jumps to Ltmp118
	.long	Lset101
	.byte	5                       ##   On action: 3
Lset102 = Ltmp119-Leh_func_begin3       ## >> Call Site 4 <<
	.long	Lset102
Lset103 = Ltmp120-Ltmp119               ##   Call between Ltmp119 and Ltmp120
	.long	Lset103
Lset104 = Ltmp121-Leh_func_begin3       ##     jumps to Ltmp121
	.long	Lset104
	.byte	11                      ##   On action: 6
Lset105 = Ltmp122-Leh_func_begin3       ## >> Call Site 5 <<
	.long	Lset105
Lset106 = Ltmp127-Ltmp122               ##   Call between Ltmp122 and Ltmp127
	.long	Lset106
Lset107 = Ltmp128-Leh_func_begin3       ##     jumps to Ltmp128
	.long	Lset107
	.byte	7                       ##   On action: 4
Lset108 = Ltmp129-Leh_func_begin3       ## >> Call Site 6 <<
	.long	Lset108
Lset109 = Ltmp130-Ltmp129               ##   Call between Ltmp129 and Ltmp130
	.long	Lset109
Lset110 = Ltmp139-Leh_func_begin3       ##     jumps to Ltmp139
	.long	Lset110
	.byte	7                       ##   On action: 4
Lset111 = Ltmp131-Leh_func_begin3       ## >> Call Site 7 <<
	.long	Lset111
Lset112 = Ltmp132-Ltmp131               ##   Call between Ltmp131 and Ltmp132
	.long	Lset112
Lset113 = Ltmp133-Leh_func_begin3       ##     jumps to Ltmp133
	.long	Lset113
	.byte	7                       ##   On action: 4
Lset114 = Ltmp132-Leh_func_begin3       ## >> Call Site 8 <<
	.long	Lset114
Lset115 = Ltmp134-Ltmp132               ##   Call between Ltmp132 and Ltmp134
	.long	Lset115
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset116 = Ltmp134-Leh_func_begin3       ## >> Call Site 9 <<
	.long	Lset116
Lset117 = Ltmp135-Ltmp134               ##   Call between Ltmp134 and Ltmp135
	.long	Lset117
Lset118 = Ltmp136-Leh_func_begin3       ##     jumps to Ltmp136
	.long	Lset118
	.byte	0                       ##   On action: cleanup
Lset119 = Ltmp135-Leh_func_begin3       ## >> Call Site 10 <<
	.long	Lset119
Lset120 = Ltmp137-Ltmp135               ##   Call between Ltmp135 and Ltmp137
	.long	Lset120
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset121 = Ltmp137-Leh_func_begin3       ## >> Call Site 11 <<
	.long	Lset121
Lset122 = Ltmp138-Ltmp137               ##   Call between Ltmp137 and Ltmp138
	.long	Lset122
Lset123 = Ltmp139-Leh_func_begin3       ##     jumps to Ltmp139
	.long	Lset123
	.byte	7                       ##   On action: 4
Lset124 = Ltmp138-Leh_func_begin3       ## >> Call Site 12 <<
	.long	Lset124
Lset125 = Leh_func_end3-Ltmp138         ##   Call between Ltmp138 and Leh_func_end3
	.long	Lset125
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	1                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 2
	.byte	1                       ## >> Action Record 4 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 5 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 4
	.byte	1                       ## >> Action Record 6 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 5
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.private_extern	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin4:
	.cfi_lsda 16, Lexception4
## BB#0:
	pushq	%rbp
Ltmp155:
	.cfi_def_cfa_offset 16
Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -72(%rbp)
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	%rdi, %rcx
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movb	$10, -33(%rbp)
	movq	-32(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__18ios_base6getlocEv
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-80(%rbp), %rcx         ## 8-byte Reload
Ltmp145:
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	movq	%rcx, -96(%rbp)         ## 8-byte Spill
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp146:
	movq	%rax, -104(%rbp)        ## 8-byte Spill
	jmp	LBB4_1
LBB4_1:                                 ## %_ZNSt3__19use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i
	movb	-33(%rbp), %al
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	56(%rsi), %rsi
	movsbl	-9(%rbp), %edi
Ltmp147:
	movl	%edi, -108(%rbp)        ## 4-byte Spill
	movq	%rdx, %rdi
	movl	-108(%rbp), %r8d        ## 4-byte Reload
	movq	%rsi, -120(%rbp)        ## 8-byte Spill
	movl	%r8d, %esi
	movq	-120(%rbp), %rdx        ## 8-byte Reload
	callq	*%rdx
Ltmp148:
	movb	%al, -121(%rbp)         ## 1-byte Spill
	jmp	LBB4_5
LBB4_2:
Ltmp149:
	movl	%edx, %ecx
	movq	%rax, -56(%rbp)
	movl	%ecx, -60(%rbp)
Ltmp150:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp151:
	jmp	LBB4_3
LBB4_3:
	movq	-56(%rbp), %rdi
	callq	__Unwind_Resume
LBB4_4:
Ltmp152:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -128(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB4_5:                                 ## %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc.exit
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	movb	-121(%rbp), %al         ## 1-byte Reload
	movsbl	%al, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	-72(%rbp), %rdi
	movq	%rax, -136(%rbp)        ## 8-byte Spill
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	-72(%rbp), %rdi
	movq	%rax, -144(%rbp)        ## 8-byte Spill
	movq	%rdi, %rax
	addq	$144, %rsp
	popq	%rbp
	ret
	.cfi_endproc
Leh_func_end4:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table4:
Lexception4:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\274"                 ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset126 = Leh_func_begin4-Leh_func_begin4 ## >> Call Site 1 <<
	.long	Lset126
Lset127 = Ltmp145-Leh_func_begin4       ##   Call between Leh_func_begin4 and Ltmp145
	.long	Lset127
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset128 = Ltmp145-Leh_func_begin4       ## >> Call Site 2 <<
	.long	Lset128
Lset129 = Ltmp148-Ltmp145               ##   Call between Ltmp145 and Ltmp148
	.long	Lset129
Lset130 = Ltmp149-Leh_func_begin4       ##     jumps to Ltmp149
	.long	Lset130
	.byte	0                       ##   On action: cleanup
Lset131 = Ltmp150-Leh_func_begin4       ## >> Call Site 3 <<
	.long	Lset131
Lset132 = Ltmp151-Ltmp150               ##   Call between Ltmp150 and Ltmp151
	.long	Lset132
Lset133 = Ltmp152-Leh_func_begin4       ##     jumps to Ltmp152
	.long	Lset133
	.byte	1                       ##   On action: 1
Lset134 = Ltmp151-Leh_func_begin4       ## >> Call Site 4 <<
	.long	Lset134
Lset135 = Leh_func_end4-Ltmp151         ##   Call between Ltmp151 and Leh_func_end4
	.long	Lset135
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_definition	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin5:
	.cfi_lsda 16, Lexception5
## BB#0:
	pushq	%rbp
Ltmp166:
	.cfi_def_cfa_offset 16
Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
Ltmp158:
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
Ltmp159:
	jmp	LBB5_1
LBB5_1:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$416, %rax              ## imm = 0x1A0
	movq	%rax, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	addq	$48, %rsp
	popq	%rbp
	ret
LBB5_2:
Ltmp160:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         ## 8-byte Reload
	addq	$416, %rax              ## imm = 0x1A0
Ltmp161:
	movq	%rax, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
Ltmp162:
	jmp	LBB5_3
LBB5_3:
	jmp	LBB5_4
LBB5_4:
	movq	-16(%rbp), %rdi
	callq	__Unwind_Resume
LBB5_5:
Ltmp163:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -36(%rbp)         ## 4-byte Spill
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end5:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table5:
Lexception5:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\274"                 ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset136 = Ltmp158-Leh_func_begin5       ## >> Call Site 1 <<
	.long	Lset136
Lset137 = Ltmp159-Ltmp158               ##   Call between Ltmp158 and Ltmp159
	.long	Lset137
Lset138 = Ltmp160-Leh_func_begin5       ##     jumps to Ltmp160
	.long	Lset138
	.byte	0                       ##   On action: cleanup
Lset139 = Ltmp159-Leh_func_begin5       ## >> Call Site 2 <<
	.long	Lset139
Lset140 = Ltmp161-Ltmp159               ##   Call between Ltmp159 and Ltmp161
	.long	Lset140
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset141 = Ltmp161-Leh_func_begin5       ## >> Call Site 3 <<
	.long	Lset141
Lset142 = Ltmp162-Ltmp161               ##   Call between Ltmp161 and Ltmp162
	.long	Lset142
Lset143 = Ltmp163-Leh_func_begin5       ##     jumps to Ltmp163
	.long	Lset143
	.byte	1                       ##   On action: 1
Lset144 = Ltmp162-Leh_func_begin5       ## >> Call Site 4 <<
	.long	Lset144
Lset145 = Leh_func_end5-Ltmp162         ##   Call between Ltmp162 and Leh_func_end5
	.long	Lset145
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	___cxa_begin_catch
	movq	%rax, -8(%rbp)          ## 8-byte Spill
	callq	__ZSt9terminatev

	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin7:
	.cfi_lsda 16, Lexception7
## BB#0:
	pushq	%rbp
Ltmp177:
	.cfi_def_cfa_offset 16
Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$704, %rsp              ## imm = 0x2C0
	movb	%r9b, %al
	leaq	-528(%rbp), %r10
	leaq	-464(%rbp), %r11
	movq	%rdi, -480(%rbp)
	movq	%rsi, -488(%rbp)
	movq	%rdx, -496(%rbp)
	movq	%rcx, -504(%rbp)
	movq	%r8, -512(%rbp)
	movb	%al, -513(%rbp)
	movq	-480(%rbp), %rcx
	movq	%r11, -448(%rbp)
	movq	$-1, -456(%rbp)
	movq	-448(%rbp), %rdx
	movq	-456(%rbp), %rsi
	movq	%rdx, -432(%rbp)
	movq	%rsi, -440(%rbp)
	movq	-432(%rbp), %rdx
	movq	$0, (%rdx)
	movq	-464(%rbp), %rdx
	movq	%rdx, -528(%rbp)
	movq	%r10, -424(%rbp)
	cmpq	$0, %rcx
	jne	LBB7_2
## BB#1:
	movq	-480(%rbp), %rax
	movq	%rax, -472(%rbp)
	jmp	LBB7_29
LBB7_2:
	movq	-504(%rbp), %rax
	movq	-488(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -536(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	cmpq	-536(%rbp), %rax
	jle	LBB7_4
## BB#3:
	movq	-536(%rbp), %rax
	movq	-544(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -544(%rbp)
	jmp	LBB7_5
LBB7_4:
	movq	$0, -544(%rbp)
LBB7_5:
	movq	-496(%rbp), %rax
	movq	-488(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jle	LBB7_9
## BB#6:
	movq	-480(%rbp), %rax
	movq	-488(%rbp), %rcx
	movq	-552(%rbp), %rdx
	movq	%rax, -224(%rbp)
	movq	%rcx, -232(%rbp)
	movq	%rdx, -240(%rbp)
	movq	-224(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-232(%rbp), %rsi
	movq	-240(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-552(%rbp), %rax
	je	LBB7_8
## BB#7:
	leaq	-560(%rbp), %rax
	leaq	-216(%rbp), %rcx
	movq	%rcx, -200(%rbp)
	movq	$-1, -208(%rbp)
	movq	-200(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movq	%rcx, -184(%rbp)
	movq	%rdx, -192(%rbp)
	movq	-184(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-216(%rbp), %rcx
	movq	%rcx, -560(%rbp)
	movq	%rax, -8(%rbp)
	movq	$0, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -472(%rbp)
	jmp	LBB7_29
LBB7_8:
	jmp	LBB7_9
LBB7_9:
	cmpq	$0, -544(%rbp)
	jle	LBB7_24
## BB#10:
	leaq	-584(%rbp), %rax
	movq	-544(%rbp), %rcx
	movb	-513(%rbp), %dl
	movq	%rax, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movb	%dl, -81(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	-81(%rbp), %dl
	movq	%rax, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movb	%dl, -57(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movsbl	-57(%rbp), %edx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	leaq	-584(%rbp), %rax
	movq	-480(%rbp), %rcx
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movq	-152(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movq	-144(%rbp), %rsi
	movzbl	(%rsi), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movq	%rcx, -632(%rbp)        ## 8-byte Spill
	movq	%rax, -640(%rbp)        ## 8-byte Spill
	je	LBB7_12
## BB#11:
	movq	-640(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -648(%rbp)        ## 8-byte Spill
	jmp	LBB7_13
LBB7_12:
	movq	-640(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-120(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -648(%rbp)        ## 8-byte Spill
LBB7_13:                                ## %_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv.exit
	movq	-648(%rbp), %rax        ## 8-byte Reload
	movq	-544(%rbp), %rcx
	movq	-632(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	%rax, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	-248(%rbp), %rax
	movq	(%rax), %rsi
	movq	96(%rsi), %rsi
	movq	-256(%rbp), %rdi
Ltmp169:
	movq	%rdi, -656(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-656(%rbp), %rax        ## 8-byte Reload
	movq	%rsi, -664(%rbp)        ## 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	-664(%rbp), %rcx        ## 8-byte Reload
	callq	*%rcx
Ltmp170:
	movq	%rax, -672(%rbp)        ## 8-byte Spill
	jmp	LBB7_14
LBB7_14:                                ## %_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl.exit
	jmp	LBB7_15
LBB7_15:
	movq	-672(%rbp), %rax        ## 8-byte Reload
	cmpq	-544(%rbp), %rax
	je	LBB7_20
## BB#16:
	leaq	-304(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	$-1, -296(%rbp)
	movq	-288(%rbp), %rax
	movq	-296(%rbp), %rcx
	movq	%rax, -272(%rbp)
	movq	%rcx, -280(%rbp)
	movq	-272(%rbp), %rax
	movq	$0, (%rax)
	movq	-304(%rbp), %rax
	movq	%rax, -680(%rbp)        ## 8-byte Spill
## BB#17:
	leaq	-608(%rbp), %rax
	movq	-680(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -608(%rbp)
	movq	%rax, -312(%rbp)
## BB#18:
	movq	$0, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -472(%rbp)
	movl	$1, -612(%rbp)
	jmp	LBB7_21
LBB7_19:
Ltmp171:
	movl	%edx, %ecx
	movq	%rax, -592(%rbp)
	movl	%ecx, -596(%rbp)
Ltmp172:
	leaq	-584(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp173:
	jmp	LBB7_23
LBB7_20:
	movl	$0, -612(%rbp)
LBB7_21:
	leaq	-584(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-612(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -684(%rbp)        ## 4-byte Spill
	movl	%ecx, -688(%rbp)        ## 4-byte Spill
	je	LBB7_29
	jmp	LBB7_33
LBB7_33:
	movl	-684(%rbp), %eax        ## 4-byte Reload
	testl	%eax, %eax
	jne	LBB7_32
	jmp	LBB7_22
LBB7_22:
	jmp	LBB7_24
LBB7_23:
	jmp	LBB7_30
LBB7_24:
	movq	-504(%rbp), %rax
	movq	-496(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -552(%rbp)
	cmpq	$0, -552(%rbp)
	jle	LBB7_28
## BB#25:
	movq	-480(%rbp), %rax
	movq	-496(%rbp), %rcx
	movq	-552(%rbp), %rdx
	movq	%rax, -328(%rbp)
	movq	%rcx, -336(%rbp)
	movq	%rdx, -344(%rbp)
	movq	-328(%rbp), %rax
	movq	(%rax), %rcx
	movq	96(%rcx), %rcx
	movq	-336(%rbp), %rsi
	movq	-344(%rbp), %rdx
	movq	%rax, %rdi
	callq	*%rcx
	cmpq	-552(%rbp), %rax
	je	LBB7_27
## BB#26:
	leaq	-624(%rbp), %rax
	leaq	-384(%rbp), %rcx
	movq	%rcx, -368(%rbp)
	movq	$-1, -376(%rbp)
	movq	-368(%rbp), %rcx
	movq	-376(%rbp), %rdx
	movq	%rcx, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-352(%rbp), %rcx
	movq	$0, (%rcx)
	movq	-384(%rbp), %rcx
	movq	%rcx, -624(%rbp)
	movq	%rax, -392(%rbp)
	movq	$0, -480(%rbp)
	movq	-480(%rbp), %rax
	movq	%rax, -472(%rbp)
	jmp	LBB7_29
LBB7_27:
	jmp	LBB7_28
LBB7_28:
	movq	-512(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	$0, -408(%rbp)
	movq	-400(%rbp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -416(%rbp)
	movq	-408(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-480(%rbp), %rax
	movq	%rax, -472(%rbp)
LBB7_29:
	movq	-472(%rbp), %rax
	addq	$704, %rsp              ## imm = 0x2C0
	popq	%rbp
	ret
LBB7_30:
	movq	-592(%rbp), %rdi
	callq	__Unwind_Resume
LBB7_31:
Ltmp174:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -692(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
LBB7_32:
	.cfi_endproc
Leh_func_end7:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table7:
Lexception7:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\274"                 ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset146 = Leh_func_begin7-Leh_func_begin7 ## >> Call Site 1 <<
	.long	Lset146
Lset147 = Ltmp169-Leh_func_begin7       ##   Call between Leh_func_begin7 and Ltmp169
	.long	Lset147
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset148 = Ltmp169-Leh_func_begin7       ## >> Call Site 2 <<
	.long	Lset148
Lset149 = Ltmp170-Ltmp169               ##   Call between Ltmp169 and Ltmp170
	.long	Lset149
Lset150 = Ltmp171-Leh_func_begin7       ##     jumps to Ltmp171
	.long	Lset150
	.byte	0                       ##   On action: cleanup
Lset151 = Ltmp172-Leh_func_begin7       ## >> Call Site 3 <<
	.long	Lset151
Lset152 = Ltmp173-Ltmp172               ##   Call between Ltmp172 and Ltmp173
	.long	Lset152
Lset153 = Ltmp174-Leh_func_begin7       ##     jumps to Ltmp174
	.long	Lset153
	.byte	1                       ##   On action: 1
Lset154 = Ltmp173-Leh_func_begin7       ## >> Call Site 4 <<
	.long	Lset154
Lset155 = Leh_func_end7-Ltmp173         ##   Call between Ltmp173 and Leh_func_end7
	.long	Lset155
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp182:
	.cfi_def_cfa_offset 16
Ltmp183:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp184:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp187:
	.cfi_def_cfa_offset 16
Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	$0, -32(%rbp)
	cmpq	$0, 120(%rsi)
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	jne	LBB9_25
## BB#1:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %ecx
	andl	$-3, %ecx
	movl	%ecx, %edx
	subl	$47, %edx
	movl	%ecx, -52(%rbp)         ## 4-byte Spill
	movl	%edx, -56(%rbp)         ## 4-byte Spill
	ja	LBB9_27
	jmp	LBB9_26
LBB9_26:
	movl	-52(%rbp), %eax         ## 4-byte Reload
	decl	%eax
	movl	%eax, %ecx
	subl	$28, %eax
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	ja	LBB9_14
## BB#32:
	leaq	LJTI9_0(%rip), %rax
	movq	-64(%rbp), %rcx         ## 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
LBB9_27:
	movl	-52(%rbp), %eax         ## 4-byte Reload
	subl	$51, %eax
	movl	%eax, -72(%rbp)         ## 4-byte Spill
	ja	LBB9_29
	jmp	LBB9_28
LBB9_28:
	movl	-52(%rbp), %eax         ## 4-byte Reload
	subl	$48, %eax
	movl	%eax, -76(%rbp)         ## 4-byte Spill
	je	LBB9_2
	jmp	LBB9_14
LBB9_29:
	movl	-52(%rbp), %eax         ## 4-byte Reload
	subl	$52, %eax
	movl	%eax, -80(%rbp)         ## 4-byte Spill
	je	LBB9_8
	jmp	LBB9_30
LBB9_30:
	movl	-52(%rbp), %eax         ## 4-byte Reload
	subl	$56, %eax
	movl	%eax, -84(%rbp)         ## 4-byte Spill
	je	LBB9_6
	jmp	LBB9_31
LBB9_31:
	movl	-52(%rbp), %eax         ## 4-byte Reload
	subl	$60, %eax
	movl	%eax, -88(%rbp)         ## 4-byte Spill
	je	LBB9_12
	jmp	LBB9_14
LBB9_2:
	leaq	L_.str2(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_3:
	leaq	L_.str3(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_4:
	leaq	L_.str4(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_5:
	leaq	L_.str5(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_6:
	leaq	L_.str6(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_7:
	leaq	L_.str7(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_8:
	leaq	L_.str8(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_9:
	leaq	L_.str9(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_10:
	leaq	L_.str10(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_11:
	leaq	L_.str11(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_12:
	leaq	L_.str12(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_13:
	leaq	L_.str13(%rip), %rax
	movq	%rax, -40(%rbp)
	jmp	LBB9_15
LBB9_14:
	movq	$0, -32(%rbp)
LBB9_15:
	cmpq	$0, -32(%rbp)
	je	LBB9_24
## BB#16:
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_fopen
	movq	-48(%rbp), %rsi         ## 8-byte Reload
	movq	%rax, 120(%rsi)
	cmpq	$0, 120(%rsi)
	je	LBB9_22
## BB#17:
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	movl	%eax, 392(%rcx)
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	LBB9_21
## BB#18:
	movabsq	$0, %rsi
	movl	$2, %edx
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	120(%rax), %rdi
	callq	_fseek
	cmpl	$0, %eax
	je	LBB9_20
## BB#19:
	movq	-48(%rbp), %rax         ## 8-byte Reload
	movq	120(%rax), %rdi
	callq	_fclose
	movq	-48(%rbp), %rdi         ## 8-byte Reload
	movq	$0, 120(%rdi)
	movq	$0, -32(%rbp)
	movl	%eax, -92(%rbp)         ## 4-byte Spill
LBB9_20:
	jmp	LBB9_21
LBB9_21:
	jmp	LBB9_23
LBB9_22:
	movq	$0, -32(%rbp)
LBB9_23:
	jmp	LBB9_24
LBB9_24:
	jmp	LBB9_25
LBB9_25:
	movq	-32(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	ret
	.cfi_endproc
	.align	2, 0x90
L9_0_set_3 = LBB9_3-LJTI9_0
L9_0_set_14 = LBB9_14-LJTI9_0
L9_0_set_9 = LBB9_9-LJTI9_0
L9_0_set_4 = LBB9_4-LJTI9_0
L9_0_set_7 = LBB9_7-LJTI9_0
L9_0_set_10 = LBB9_10-LJTI9_0
L9_0_set_13 = LBB9_13-LJTI9_0
L9_0_set_2 = LBB9_2-LJTI9_0
L9_0_set_8 = LBB9_8-LJTI9_0
L9_0_set_5 = LBB9_5-LJTI9_0
L9_0_set_11 = LBB9_11-LJTI9_0
LJTI9_0:
	.long	L9_0_set_3
	.long	L9_0_set_14
	.long	L9_0_set_14
	.long	L9_0_set_14
	.long	L9_0_set_9
	.long	L9_0_set_14
	.long	L9_0_set_14
	.long	L9_0_set_4
	.long	L9_0_set_7
	.long	L9_0_set_14
	.long	L9_0_set_14
	.long	L9_0_set_10
	.long	L9_0_set_13
	.long	L9_0_set_14
	.long	L9_0_set_14
	.long	L9_0_set_2
	.long	L9_0_set_3
	.long	L9_0_set_14
	.long	L9_0_set_14
	.long	L9_0_set_8
	.long	L9_0_set_9
	.long	L9_0_set_14
	.long	L9_0_set_14
	.long	L9_0_set_5
	.long	L9_0_set_7
	.long	L9_0_set_14
	.long	L9_0_set_14
	.long	L9_0_set_11
	.long	L9_0_set_13

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp192:
	.cfi_def_cfa_offset 16
Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.weak_definition	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin11:
	.cfi_lsda 16, Lexception11
## BB#0:
	pushq	%rbp
Ltmp200:
	.cfi_def_cfa_offset 16
Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
Ltmp195:
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
Ltmp196:
	jmp	LBB11_1
LBB11_1:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZdlPv
	addq	$32, %rsp
	popq	%rbp
	ret
LBB11_2:
Ltmp197:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZdlPv
## BB#3:
	movq	-16(%rbp), %rdi
	callq	__Unwind_Resume
	.cfi_endproc
Leh_func_end11:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table11:
Lexception11:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\234"                 ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset156 = Ltmp195-Leh_func_begin11      ## >> Call Site 1 <<
	.long	Lset156
Lset157 = Ltmp196-Ltmp195               ##   Call between Ltmp195 and Ltmp196
	.long	Lset157
Lset158 = Ltmp197-Leh_func_begin11      ##     jumps to Ltmp197
	.long	Lset158
	.byte	0                       ##   On action: cleanup
Lset159 = Ltmp196-Leh_func_begin11      ## >> Call Site 2 <<
	.long	Lset159
Lset160 = Leh_func_end11-Ltmp196        ##   Call between Ltmp196 and Leh_func_end11
	.long	Lset160
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_definition	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.align	4, 0x90
__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp205:
	.cfi_def_cfa_offset 16
Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp207:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	addq	-24(%rdi), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	addq	$16, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.weak_definition	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.align	4, 0x90
__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp210:
	.cfi_def_cfa_offset 16
Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	movq	(%rdi), %rdi
	addq	-24(%rdi), %rax
	movq	%rax, %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	addq	$16, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.weak_definition	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin14:
	.cfi_lsda 16, Lexception14
## BB#0:
	pushq	%rbp
Ltmp221:
	.cfi_def_cfa_offset 16
Ltmp222:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp223:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	24(%rsi), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, (%rdi,%rax)
	movq	%rdi, %rax
	addq	$8, %rax
Ltmp213:
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
Ltmp214:
	jmp	LBB14_1
LBB14_1:
	movq	-40(%rbp), %rax         ## 8-byte Reload
	movq	-48(%rbp), %rcx         ## 8-byte Reload
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	addq	$64, %rsp
	popq	%rbp
	ret
LBB14_2:
Ltmp215:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-48(%rbp), %rax         ## 8-byte Reload
	addq	$8, %rax
Ltmp216:
	movq	-40(%rbp), %rdi         ## 8-byte Reload
	movq	%rax, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
Ltmp217:
	jmp	LBB14_3
LBB14_3:
	jmp	LBB14_4
LBB14_4:
	movq	-24(%rbp), %rdi
	callq	__Unwind_Resume
LBB14_5:
Ltmp218:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -52(%rbp)         ## 4-byte Spill
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end14:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table14:
Lexception14:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\274"                 ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset161 = Ltmp213-Leh_func_begin14      ## >> Call Site 1 <<
	.long	Lset161
Lset162 = Ltmp214-Ltmp213               ##   Call between Ltmp213 and Ltmp214
	.long	Lset162
Lset163 = Ltmp215-Leh_func_begin14      ##     jumps to Ltmp215
	.long	Lset163
	.byte	0                       ##   On action: cleanup
Lset164 = Ltmp214-Leh_func_begin14      ## >> Call Site 2 <<
	.long	Lset164
Lset165 = Ltmp216-Ltmp214               ##   Call between Ltmp214 and Ltmp216
	.long	Lset165
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset166 = Ltmp216-Leh_func_begin14      ## >> Call Site 3 <<
	.long	Lset166
Lset167 = Ltmp217-Ltmp216               ##   Call between Ltmp216 and Ltmp217
	.long	Lset167
Lset168 = Ltmp218-Leh_func_begin14      ##     jumps to Ltmp218
	.long	Lset168
	.byte	1                       ##   On action: 1
Lset169 = Ltmp217-Leh_func_begin14      ## >> Call Site 4 <<
	.long	Lset169
Lset170 = Leh_func_end14-Ltmp217        ##   Call between Ltmp217 and Leh_func_end14
	.long	Lset170
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin15:
	.cfi_lsda 16, Lexception15
## BB#0:
	pushq	%rbp
Ltmp235:
	.cfi_def_cfa_offset 16
Ltmp236:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp237:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rax
Ltmp224:
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
Ltmp225:
	movq	%rax, -40(%rbp)         ## 8-byte Spill
	jmp	LBB15_1
LBB15_1:
	jmp	LBB15_5
LBB15_2:
Ltmp226:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
## BB#3:
	movq	-16(%rbp), %rdi
	callq	___cxa_begin_catch
Ltmp227:
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	callq	___cxa_end_catch
Ltmp228:
	jmp	LBB15_4
LBB15_4:
	jmp	LBB15_5
LBB15_5:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	testb	$1, 400(%rax)
	je	LBB15_10
## BB#6:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	64(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, -56(%rbp)         ## 8-byte Spill
	je	LBB15_8
## BB#7:
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdaPv
LBB15_8:
	jmp	LBB15_10
LBB15_9:
Ltmp229:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
Ltmp230:
	movq	-32(%rbp), %rdi         ## 8-byte Reload
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Ltmp231:
	jmp	LBB15_15
LBB15_10:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	testb	$1, 401(%rax)
	je	LBB15_14
## BB#11:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	104(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, -64(%rbp)         ## 8-byte Spill
	je	LBB15_13
## BB#12:
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	__ZdaPv
LBB15_13:
	jmp	LBB15_14
LBB15_14:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	addq	$80, %rsp
	popq	%rbp
	ret
LBB15_15:
	jmp	LBB15_16
LBB15_16:
	movq	-16(%rbp), %rdi
	callq	__Unwind_Resume
LBB15_17:
Ltmp232:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -68(%rbp)         ## 4-byte Spill
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end15:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table15:
Lexception15:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.byte	73                      ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	65                      ## Call site table length
Lset171 = Ltmp224-Leh_func_begin15      ## >> Call Site 1 <<
	.long	Lset171
Lset172 = Ltmp225-Ltmp224               ##   Call between Ltmp224 and Ltmp225
	.long	Lset172
Lset173 = Ltmp226-Leh_func_begin15      ##     jumps to Ltmp226
	.long	Lset173
	.byte	1                       ##   On action: 1
Lset174 = Ltmp225-Leh_func_begin15      ## >> Call Site 2 <<
	.long	Lset174
Lset175 = Ltmp227-Ltmp225               ##   Call between Ltmp225 and Ltmp227
	.long	Lset175
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset176 = Ltmp227-Leh_func_begin15      ## >> Call Site 3 <<
	.long	Lset176
Lset177 = Ltmp228-Ltmp227               ##   Call between Ltmp227 and Ltmp228
	.long	Lset177
Lset178 = Ltmp229-Leh_func_begin15      ##     jumps to Ltmp229
	.long	Lset178
	.byte	0                       ##   On action: cleanup
Lset179 = Ltmp230-Leh_func_begin15      ## >> Call Site 4 <<
	.long	Lset179
Lset180 = Ltmp231-Ltmp230               ##   Call between Ltmp230 and Ltmp231
	.long	Lset180
Lset181 = Ltmp232-Leh_func_begin15      ##     jumps to Ltmp232
	.long	Lset181
	.byte	1                       ##   On action: 1
Lset182 = Ltmp231-Leh_func_begin15      ## >> Call Site 5 <<
	.long	Lset182
Lset183 = Leh_func_end15-Ltmp231        ##   Call between Ltmp231 and Leh_func_end15
	.long	Lset183
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin16:
	.cfi_lsda 16, Lexception16
## BB#0:
	pushq	%rbp
Ltmp251:
	.cfi_def_cfa_offset 16
Ltmp252:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp253:
	.cfi_def_cfa_register %rbp
	subq	$528, %rsp              ## imm = 0x210
	movq	%rdi, -432(%rbp)
	movq	-432(%rbp), %rdi
	movq	$0, -440(%rbp)
	cmpq	$0, 120(%rdi)
	movq	%rdi, -480(%rbp)        ## 8-byte Spill
	je	LBB16_19
## BB#1:
	movq	-480(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -440(%rbp)
	movq	120(%rax), %rcx
	leaq	-456(%rbp), %rdx
	movq	%rdx, -408(%rbp)
	movq	%rcx, -416(%rbp)
	movq	_fclose@GOTPCREL(%rip), %rcx
	movq	%rcx, -424(%rbp)
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rsi
	movq	%rdx, -384(%rbp)
	movq	%rsi, -392(%rbp)
	leaq	-392(%rbp), %rdx
	movq	%rcx, -400(%rbp)
	leaq	-400(%rbp), %rcx
	movq	-384(%rbp), %rsi
	movq	%rdx, -376(%rbp)
	movq	-392(%rbp), %rdx
	movq	%rcx, -264(%rbp)
	movq	-400(%rbp), %rcx
	movq	%rsi, -352(%rbp)
	movq	%rdx, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movq	-352(%rbp), %rdx
	movq	-360(%rbp), %rsi
	movq	%rdx, -328(%rbp)
	movq	%rsi, -336(%rbp)
	leaq	-336(%rbp), %rdx
	movq	%rcx, -344(%rbp)
	leaq	-344(%rbp), %rcx
	movq	-328(%rbp), %rsi
	movq	%rdx, -320(%rbp)
	movq	-336(%rbp), %rdx
	movq	%rcx, -272(%rbp)
	movq	-344(%rbp), %rcx
	movq	%rsi, -296(%rbp)
	movq	%rdx, -304(%rbp)
	leaq	-304(%rbp), %rdx
	movq	%rcx, -312(%rbp)
	leaq	-312(%rbp), %rcx
	movq	-296(%rbp), %rsi
	movq	%rdx, -288(%rbp)
	movq	-304(%rbp), %rdx
	movq	%rdx, (%rsi)
	movq	%rcx, -280(%rbp)
	movq	-312(%rbp), %rcx
	movq	%rcx, 8(%rsi)
	movq	(%rax), %rcx
	movq	48(%rcx), %rcx
Ltmp238:
	movq	%rax, %rdi
	callq	*%rcx
Ltmp239:
	movl	%eax, -484(%rbp)        ## 4-byte Spill
	jmp	LBB16_2
LBB16_2:
	movl	-484(%rbp), %eax        ## 4-byte Reload
	cmpl	$0, %eax
	je	LBB16_9
## BB#3:
	movq	$0, -440(%rbp)
	jmp	LBB16_9
LBB16_4:
Ltmp242:
	leaq	-456(%rbp), %rcx
	movl	%edx, %esi
	movq	%rax, -464(%rbp)
	movl	%esi, -468(%rbp)
	movq	%rcx, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -208(%rbp)
	movq	$0, -216(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rcx
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -224(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdx
	movq	%rdx, -176(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rcx, (%rdx)
	cmpq	$0, -224(%rbp)
	movq	%rax, -496(%rbp)        ## 8-byte Spill
	je	LBB16_8
## BB#5:
	movq	-496(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	%rax, -160(%rbp)
	movq	8(%rax), %rcx
	movq	-224(%rbp), %rdi
Ltmp243:
	callq	*%rcx
Ltmp244:
	movl	%eax, -500(%rbp)        ## 4-byte Spill
	jmp	LBB16_6
LBB16_6:
	jmp	LBB16_8
LBB16_7:
Ltmp245:
	movl	%edx, %ecx
	movq	%rax, -232(%rbp)
	movl	%ecx, -236(%rbp)
	movq	-232(%rbp), %rdi
	callq	___cxa_call_unexpected
LBB16_8:                                ## %_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit
	jmp	LBB16_18
LBB16_9:
	leaq	-456(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	%rax, -136(%rbp)
	movq	%rax, -128(%rbp)
	movq	-456(%rbp), %rcx
	movq	%rcx, -152(%rbp)
	movq	%rax, -120(%rbp)
	movq	%rax, -112(%rbp)
	movq	$0, -456(%rbp)
	movq	-152(%rbp), %rdi
Ltmp240:
	callq	_fclose
Ltmp241:
	movl	%eax, -504(%rbp)        ## 4-byte Spill
	jmp	LBB16_10
LBB16_10:
	movl	-504(%rbp), %eax        ## 4-byte Reload
	cmpl	$0, %eax
	jne	LBB16_12
## BB#11:
	movq	-480(%rbp), %rax        ## 8-byte Reload
	movq	$0, 120(%rax)
	jmp	LBB16_13
LBB16_12:
	movq	$0, -440(%rbp)
LBB16_13:
	leaq	-456(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rcx, (%rdx)
	cmpq	$0, -72(%rbp)
	movq	%rax, -512(%rbp)        ## 8-byte Spill
	je	LBB16_17
## BB#14:
	movq	-512(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	8(%rax), %rcx
	movq	-72(%rbp), %rdi
Ltmp246:
	callq	*%rcx
Ltmp247:
	movl	%eax, -516(%rbp)        ## 4-byte Spill
	jmp	LBB16_15
LBB16_15:
	jmp	LBB16_17
LBB16_16:
Ltmp248:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	movq	-80(%rbp), %rdi
	callq	___cxa_call_unexpected
LBB16_17:                               ## %_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev.exit2
	jmp	LBB16_19
LBB16_18:
	jmp	LBB16_20
LBB16_19:
	movq	-440(%rbp), %rax
	addq	$528, %rsp              ## imm = 0x210
	popq	%rbp
	ret
LBB16_20:
	movq	-464(%rbp), %rdi
	callq	__Unwind_Resume
	.cfi_endproc
Leh_func_end16:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table16:
Lexception16:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\332\200\200"         ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	78                      ## Call site table length
Lset184 = Ltmp238-Leh_func_begin16      ## >> Call Site 1 <<
	.long	Lset184
Lset185 = Ltmp239-Ltmp238               ##   Call between Ltmp238 and Ltmp239
	.long	Lset185
Lset186 = Ltmp242-Leh_func_begin16      ##     jumps to Ltmp242
	.long	Lset186
	.byte	0                       ##   On action: cleanup
Lset187 = Ltmp243-Leh_func_begin16      ## >> Call Site 2 <<
	.long	Lset187
Lset188 = Ltmp244-Ltmp243               ##   Call between Ltmp243 and Ltmp244
	.long	Lset188
Lset189 = Ltmp245-Leh_func_begin16      ##     jumps to Ltmp245
	.long	Lset189
	.byte	5                       ##   On action: 3
Lset190 = Ltmp244-Leh_func_begin16      ## >> Call Site 3 <<
	.long	Lset190
Lset191 = Ltmp240-Ltmp244               ##   Call between Ltmp244 and Ltmp240
	.long	Lset191
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset192 = Ltmp240-Leh_func_begin16      ## >> Call Site 4 <<
	.long	Lset192
Lset193 = Ltmp241-Ltmp240               ##   Call between Ltmp240 and Ltmp241
	.long	Lset193
Lset194 = Ltmp242-Leh_func_begin16      ##     jumps to Ltmp242
	.long	Lset194
	.byte	0                       ##   On action: cleanup
Lset195 = Ltmp246-Leh_func_begin16      ## >> Call Site 5 <<
	.long	Lset195
Lset196 = Ltmp247-Ltmp246               ##   Call between Ltmp246 and Ltmp247
	.long	Lset196
Lset197 = Ltmp248-Leh_func_begin16      ##     jumps to Ltmp248
	.long	Lset197
	.byte	1                       ##   On action: 1
Lset198 = Ltmp247-Leh_func_begin16      ## >> Call Site 6 <<
	.long	Lset198
Lset199 = Leh_func_end16-Ltmp247        ##   Call between Ltmp247 and Leh_func_end16
	.long	Lset199
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	127                     ## >> Action Record 1 <<
                                        ##   Filter TypeInfo -1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.byte	127                     ## >> Action Record 3 <<
                                        ##   Filter TypeInfo -1
	.byte	125                     ##   Continue to action 2
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
                                        ## >> Filter TypeInfos <<
	.byte	0
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin17:
	.cfi_lsda 16, Lexception17
## BB#0:
	pushq	%rbp
Ltmp259:
	.cfi_def_cfa_offset 16
Ltmp260:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp261:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, %rax
Ltmp254:
	movq	%rax, -32(%rbp)         ## 8-byte Spill
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
Ltmp255:
	jmp	LBB17_1
LBB17_1:
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZdlPv
	addq	$32, %rsp
	popq	%rbp
	ret
LBB17_2:
Ltmp256:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZdlPv
## BB#3:
	movq	-16(%rbp), %rdi
	callq	__Unwind_Resume
	.cfi_endproc
Leh_func_end17:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table17:
Lexception17:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\234"                 ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	26                      ## Call site table length
Lset200 = Ltmp254-Leh_func_begin17      ## >> Call Site 1 <<
	.long	Lset200
Lset201 = Ltmp255-Ltmp254               ##   Call between Ltmp254 and Ltmp255
	.long	Lset201
Lset202 = Ltmp256-Leh_func_begin17      ##     jumps to Ltmp256
	.long	Lset202
	.byte	0                       ##   On action: cleanup
Lset203 = Ltmp255-Leh_func_begin17      ## >> Call Site 2 <<
	.long	Lset203
Lset204 = Leh_func_end17-Ltmp255        ##   Call between Ltmp255 and Leh_func_end17
	.long	Lset204
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp264:
	.cfi_def_cfa_offset 16
Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rax
	movq	%rdi, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	-80(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movq	%rsi, %rdi
	movq	-104(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	movq	%rsi, -120(%rbp)        ## 8-byte Spill
	callq	*48(%rcx)
	movq	-88(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-112(%rbp), %rsi        ## 8-byte Reload
	movl	%eax, -124(%rbp)        ## 4-byte Spill
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 128(%rcx)
	movb	402(%rcx), %dl
	andb	$1, %dl
	movb	%dl, -89(%rbp)
	movq	128(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rax, %rdi
	callq	*56(%rsi)
	andb	$1, %al
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movb	%al, 402(%rcx)
	movb	-89(%rbp), %al
	andb	$1, %al
	movzbl	%al, %r8d
	movb	402(%rcx), %al
	andb	$1, %al
	movzbl	%al, %r9d
	cmpl	%r9d, %r8d
	je	LBB18_13
## BB#1:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	%rcx, 40(%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	-120(%rbp), %rax        ## 8-byte Reload
	testb	$1, 402(%rax)
	je	LBB18_7
## BB#2:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	testb	$1, 400(%rax)
	je	LBB18_6
## BB#3:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	64(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, -136(%rbp)        ## 8-byte Spill
	je	LBB18_5
## BB#4:
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	callq	__ZdaPv
LBB18_5:
	jmp	LBB18_6
LBB18_6:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movb	401(%rax), %cl
	andb	$1, %cl
	movb	%cl, 400(%rax)
	movq	112(%rax), %rdx
	movq	%rdx, 96(%rax)
	movq	104(%rax), %rdx
	movq	%rdx, 64(%rax)
	movq	$0, 112(%rax)
	movq	$0, 104(%rax)
	movb	$0, 401(%rax)
	jmp	LBB18_12
LBB18_7:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	testb	$1, 400(%rax)
	jne	LBB18_10
## BB#8:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	64(%rax), %rcx
	addq	$88, %rax
	cmpq	%rax, %rcx
	je	LBB18_10
## BB#9:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	96(%rax), %rcx
	movq	%rcx, 112(%rax)
	movq	64(%rax), %rcx
	movq	%rcx, 104(%rax)
	movb	$0, 401(%rax)
	movq	96(%rax), %rdi
	callq	__Znam
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 64(%rcx)
	movb	$1, 400(%rcx)
	jmp	LBB18_11
LBB18_10:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	96(%rax), %rcx
	movq	%rcx, 112(%rax)
	movq	112(%rax), %rdi
	callq	__Znam
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 104(%rcx)
	movb	$1, 401(%rcx)
LBB18_11:
	jmp	LBB18_12
LBB18_12:
	jmp	LBB18_13
LBB18_13:
	addq	$144, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp269:
	.cfi_def_cfa_offset 16
Ltmp270:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp271:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-136(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rsi, -104(%rbp)
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	$0, -128(%rbp)
	movq	-104(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movq	%rdi, 16(%rsi)
	movq	-120(%rbp), %rdi
	movq	%rdi, 24(%rsi)
	movq	-128(%rbp), %rdi
	movq	%rdi, 32(%rsi)
	movq	%rdx, %rsi
	movq	%rsi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, 48(%rsi)
	movq	%rdi, 40(%rsi)
	movq	-24(%rbp), %rdi
	movq	%rdi, 56(%rsi)
	testb	$1, 400(%rdx)
	movq	%rdx, -168(%rbp)        ## 8-byte Spill
	je	LBB19_4
## BB#1:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	64(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, -176(%rbp)        ## 8-byte Spill
	je	LBB19_3
## BB#2:
	movq	-176(%rbp), %rdi        ## 8-byte Reload
	callq	__ZdaPv
LBB19_3:
	jmp	LBB19_4
LBB19_4:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	testb	$1, 401(%rax)
	je	LBB19_8
## BB#5:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	104(%rax), %rcx
	cmpq	$0, %rcx
	movq	%rcx, -184(%rbp)        ## 8-byte Spill
	je	LBB19_7
## BB#6:
	movq	-184(%rbp), %rdi        ## 8-byte Reload
	callq	__ZdaPv
LBB19_7:
	jmp	LBB19_8
LBB19_8:
	movq	-152(%rbp), %rax
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 96(%rcx)
	cmpq	$8, 96(%rcx)
	jbe	LBB19_14
## BB#9:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	testb	$1, 402(%rax)
	je	LBB19_12
## BB#10:
	cmpq	$0, -144(%rbp)
	je	LBB19_12
## BB#11:
	movq	-144(%rbp), %rax
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 64(%rcx)
	movb	$0, 400(%rcx)
	jmp	LBB19_13
LBB19_12:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	96(%rax), %rdi
	callq	__Znam
	movq	-168(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, 64(%rdi)
	movb	$1, 400(%rdi)
LBB19_13:
	jmp	LBB19_15
LBB19_14:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	addq	$88, %rax
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 64(%rcx)
	movq	$8, 96(%rcx)
	movb	$0, 400(%rcx)
LBB19_15:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	testb	$1, 402(%rax)
	jne	LBB19_24
## BB#16:
	leaq	-72(%rbp), %rax
	leaq	-160(%rbp), %rcx
	leaq	-152(%rbp), %rdx
	movq	$8, -160(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rcx, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	LBB19_18
## BB#17:
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	jmp	LBB19_19
LBB19_18:
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        ## 8-byte Spill
LBB19_19:                               ## %_ZNSt3__13maxIlEERKT_S3_S3_.exit
	movq	-192(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 112(%rcx)
	cmpq	$0, -144(%rbp)
	je	LBB19_22
## BB#20:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	cmpq	$8, 112(%rax)
	jb	LBB19_22
## BB#21:
	movq	-144(%rbp), %rax
	movq	-168(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 104(%rcx)
	movb	$0, 401(%rcx)
	jmp	LBB19_23
LBB19_22:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	112(%rax), %rdi
	callq	__Znam
	movq	-168(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, 104(%rdi)
	movb	$1, 401(%rdi)
LBB19_23:
	jmp	LBB19_25
LBB19_24:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	$0, 112(%rax)
	movq	$0, 104(%rax)
	movb	$0, 401(%rax)
LBB19_25:
	movq	-168(%rbp), %rax        ## 8-byte Reload
	addq	$192, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp274:
	.cfi_def_cfa_offset 16
Ltmp275:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp276:
	.cfi_def_cfa_register %rbp
	subq	$688, %rsp              ## imm = 0x2B0
	movq	%rdi, %rax
	movq	___stack_chk_guard@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movq	%r9, -8(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movl	%ecx, -300(%rbp)
	movl	%r8d, -304(%rbp)
	movq	-288(%rbp), %rdx
	cmpq	$0, 128(%rdx)
	movq	%rax, -584(%rbp)        ## 8-byte Spill
	movq	%rdi, -592(%rbp)        ## 8-byte Spill
	movq	%rdx, -600(%rbp)        ## 8-byte Spill
	jne	LBB20_2
## BB#1:
	movabsq	$8, %rdi
	callq	___cxa_allocate_exception
	movq	%rax, %rdi
	movq	%rax, -608(%rbp)        ## 8-byte Spill
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rax
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdi
	movq	-608(%rbp), %rcx        ## 8-byte Reload
	movq	%rdi, -616(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-616(%rbp), %rdx        ## 8-byte Reload
	callq	___cxa_throw
LBB20_2:
	movq	-600(%rbp), %rax        ## 8-byte Reload
	movq	128(%rax), %rcx
	movq	%rcx, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*48(%rdx)
	movl	%eax, -308(%rbp)
	movq	-600(%rbp), %rcx        ## 8-byte Reload
	cmpq	$0, 120(%rcx)
	je	LBB20_6
## BB#3:
	cmpl	$0, -308(%rbp)
	jg	LBB20_5
## BB#4:
	cmpq	$0, -296(%rbp)
	jne	LBB20_6
LBB20_5:
	movq	-600(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*48(%rcx)
	cmpl	$0, %eax
	je	LBB20_7
LBB20_6:
	movl	$0, %esi
	movabsq	$128, %rdx
	movq	-592(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	$-1, -272(%rbp)
	movq	-264(%rbp), %rcx
	movq	-272(%rbp), %rdi
	movq	%rcx, -248(%rbp)
	movq	%rdi, -256(%rbp)
	movq	-248(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -624(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-256(%rbp), %rax
	movq	-624(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 128(%rcx)
	jmp	LBB20_18
LBB20_7:
	movl	-300(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -628(%rbp)        ## 4-byte Spill
	movl	%ecx, -632(%rbp)        ## 4-byte Spill
	je	LBB20_10
	jmp	LBB20_21
LBB20_21:
	movl	-628(%rbp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -636(%rbp)        ## 4-byte Spill
	je	LBB20_9
	jmp	LBB20_22
LBB20_22:
	movl	-628(%rbp), %eax        ## 4-byte Reload
	testl	%eax, %eax
	jne	LBB20_11
	jmp	LBB20_8
LBB20_8:
	movl	$0, -312(%rbp)
	jmp	LBB20_12
LBB20_9:
	movl	$1, -312(%rbp)
	jmp	LBB20_12
LBB20_10:
	movl	$2, -312(%rbp)
	jmp	LBB20_12
LBB20_11:
	movl	$0, %esi
	movabsq	$128, %rdx
	movq	-592(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	$-1, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rcx, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -648(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-24(%rbp), %rax
	movq	-648(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 128(%rcx)
	jmp	LBB20_18
LBB20_12:
	movq	-600(%rbp), %rax        ## 8-byte Reload
	movq	120(%rax), %rdi
	cmpl	$0, -308(%rbp)
	movq	%rdi, -656(%rbp)        ## 8-byte Spill
	jle	LBB20_14
## BB#13:
	movslq	-308(%rbp), %rax
	imulq	-296(%rbp), %rax
	movq	%rax, -664(%rbp)        ## 8-byte Spill
	jmp	LBB20_15
LBB20_14:
	movabsq	$0, %rax
	movq	%rax, -664(%rbp)        ## 8-byte Spill
	jmp	LBB20_15
LBB20_15:
	movq	-664(%rbp), %rax        ## 8-byte Reload
	movl	-312(%rbp), %edx
	movq	-656(%rbp), %rdi        ## 8-byte Reload
	movq	%rax, %rsi
	callq	_fseeko
	cmpl	$0, %eax
	je	LBB20_17
## BB#16:
	movl	$0, %esi
	movabsq	$128, %rdx
	movq	-592(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	$-1, -72(%rbp)
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %rdi
	movq	%rcx, -48(%rbp)
	movq	%rdi, -56(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -672(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-56(%rbp), %rax
	movq	-672(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 128(%rcx)
	jmp	LBB20_18
LBB20_17:
	movq	-600(%rbp), %rax        ## 8-byte Reload
	movq	120(%rax), %rdi
	callq	_ftello
	movl	$0, %esi
	movabsq	$128, %rdx
	leaq	-448(%rbp), %rdi
	movq	%rdi, -96(%rbp)
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rdi
	movq	%rax, -80(%rbp)
	movq	%rdi, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -680(%rbp)        ## 8-byte Spill
	callq	_memset
	movabsq	$128, %rdx
	leaq	-576(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	-680(%rbp), %rcx        ## 8-byte Reload
	movq	%rdi, 128(%rcx)
	movq	-600(%rbp), %rdi        ## 8-byte Reload
	addq	$136, %rdi
	movq	%rdi, -688(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-688(%rbp), %rsi        ## 8-byte Reload
	callq	_memcpy
	movabsq	$128, %rdx
	leaq	-576(%rbp), %rax
	leaq	-240(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_memcpy
	movabsq	$128, %rdx
	leaq	-240(%rbp), %rax
	leaq	-448(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_memcpy
	movabsq	$136, %rdx
	leaq	-448(%rbp), %rax
	movq	-592(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_memcpy
LBB20_18:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB20_20
## BB#19:                               ## %SP_return
	movq	-584(%rbp), %rax        ## 8-byte Reload
	addq	$688, %rsp              ## imm = 0x2B0
	popq	%rbp
	ret
LBB20_20:                               ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp279:
	.cfi_def_cfa_offset 16
Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              ## imm = 0x130
	movq	%rdi, %rax
	leaq	16(%rbp), %rcx
	movq	___stack_chk_guard@GOTPCREL(%rip), %r8
	movq	(%r8), %r8
	movq	%r8, -8(%rbp)
	movq	%rsi, -96(%rbp)
	movl	%edx, -100(%rbp)
	movq	-96(%rbp), %rsi
	cmpq	$0, 120(%rsi)
	movq	%rax, -240(%rbp)        ## 8-byte Spill
	movq	%rcx, -248(%rbp)        ## 8-byte Spill
	movq	%rdi, -256(%rbp)        ## 8-byte Spill
	movq	%rsi, -264(%rbp)        ## 8-byte Spill
	je	LBB21_2
## BB#1:
	movq	-264(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*48(%rcx)
	cmpl	$0, %eax
	je	LBB21_3
LBB21_2:
	movl	$0, %esi
	movabsq	$128, %rdx
	movq	-256(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	$-1, -88(%rbp)
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %rdi
	movq	%rcx, -64(%rbp)
	movq	%rdi, -72(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -272(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-72(%rbp), %rax
	movq	-272(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 128(%rcx)
	jmp	LBB21_6
LBB21_3:
	movl	$0, %edx
	movq	-264(%rbp), %rax        ## 8-byte Reload
	movq	120(%rax), %rdi
	movq	-248(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rsi
	callq	_fseeko
	cmpl	$0, %eax
	je	LBB21_5
## BB#4:
	movl	$0, %esi
	movabsq	$128, %rdx
	movq	-256(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	%rcx, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -280(%rbp)        ## 8-byte Spill
	callq	_memset
	movq	-32(%rbp), %rax
	movq	-280(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, 128(%rcx)
	jmp	LBB21_6
LBB21_5:
	movabsq	$128, %rdx
	leaq	-232(%rbp), %rax
	movq	-264(%rbp), %rcx        ## 8-byte Reload
	addq	$136, %rcx
	movq	-248(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -288(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-288(%rbp), %rsi        ## 8-byte Reload
	movq	%rcx, -296(%rbp)        ## 8-byte Spill
	callq	_memcpy
	movabsq	$128, %rdx
	leaq	-232(%rbp), %rax
	movq	-296(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_memcpy
	movabsq	$136, %rdx
	movq	-256(%rbp), %rax        ## 8-byte Reload
	movq	-248(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_memcpy
LBB21_6:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB21_8
## BB#7:                                ## %SP_return
	movq	-240(%rbp), %rax        ## 8-byte Reload
	addq	$304, %rsp              ## imm = 0x130
	popq	%rbp
	ret
LBB21_8:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp284:
	.cfi_def_cfa_offset 16
Ltmp285:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp286:
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              ## imm = 0x1D0
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpq	$0, 120(%rax)
	movq	%rax, -408(%rbp)        ## 8-byte Spill
	jne	LBB22_2
## BB#1:
	movl	$0, -212(%rbp)
	jmp	LBB22_35
LBB22_2:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	cmpq	$0, 128(%rax)
	jne	LBB22_4
## BB#3:
	movabsq	$8, %rdi
	callq	___cxa_allocate_exception
	movq	%rax, %rdi
	movq	%rax, -416(%rbp)        ## 8-byte Spill
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rax
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdi
	movq	-416(%rbp), %rcx        ## 8-byte Reload
	movq	%rdi, -424(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-424(%rbp), %rdx        ## 8-byte Reload
	callq	___cxa_throw
LBB22_4:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movl	396(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	je	LBB22_19
## BB#5:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	movq	48(%rax), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -128(%rbp)
	movq	-128(%rbp), %rcx
	cmpq	40(%rcx), %rax
	je	LBB22_9
## BB#6:
	movl	$4294967295, %esi       ## imm = 0xFFFFFFFF
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*104(%rcx)
	cmpl	$-1, %eax
	jne	LBB22_8
## BB#7:
	movl	$-1, -212(%rbp)
	jmp	LBB22_35
LBB22_8:
	jmp	LBB22_9
LBB22_9:
	jmp	LBB22_10
LBB22_10:                               ## =>This Inner Loop Header: Depth=1
	movabsq	$1, %rsi
	leaq	-240(%rbp), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	128(%rcx), %rdx
	addq	$136, %rcx
	movq	-408(%rbp), %rdi        ## 8-byte Reload
	movq	64(%rdi), %r8
	movq	64(%rdi), %r9
	addq	96(%rdi), %r9
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	40(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %r10
	movq	%rax, %rdi
	movq	%rsi, -432(%rbp)        ## 8-byte Spill
	movq	%rdx, %rsi
	movq	%r8, %rdx
	movq	%rcx, -440(%rbp)        ## 8-byte Spill
	movq	%r9, %rcx
	movq	%r10, %r8
	movq	-440(%rbp), %rax        ## 8-byte Reload
	callq	*%rax
	movl	%eax, -228(%rbp)
	movq	-240(%rbp), %rcx
	movq	-408(%rbp), %rdx        ## 8-byte Reload
	movq	64(%rdx), %rsi
	subq	%rsi, %rcx
	movq	%rcx, -248(%rbp)
	movq	64(%rdx), %rdi
	movq	-248(%rbp), %rdx
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	120(%rcx), %rcx
	movq	-432(%rbp), %rsi        ## 8-byte Reload
	callq	_fwrite
	cmpq	-248(%rbp), %rax
	je	LBB22_12
## BB#11:
	movl	$-1, -212(%rbp)
	jmp	LBB22_35
LBB22_12:                               ##   in Loop: Header=BB22_10 Depth=1
	jmp	LBB22_13
LBB22_13:                               ##   in Loop: Header=BB22_10 Depth=1
	cmpl	$1, -228(%rbp)
	je	LBB22_10
## BB#14:
	cmpl	$2, -228(%rbp)
	jne	LBB22_16
## BB#15:
	movl	$-1, -212(%rbp)
	jmp	LBB22_35
LBB22_16:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	120(%rax), %rdi
	callq	_fflush
	cmpl	$0, %eax
	je	LBB22_18
## BB#17:
	movl	$-1, -212(%rbp)
	jmp	LBB22_35
LBB22_18:
	jmp	LBB22_34
LBB22_19:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movl	396(%rax), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	LBB22_33
## BB#20:
	movabsq	$128, %rdx
	leaq	-384(%rbp), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	addq	$264, %rcx              ## imm = 0x108
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_memcpy
	movb	$0, -385(%rbp)
	movq	-408(%rbp), %rax        ## 8-byte Reload
	testb	$1, 402(%rax)
	je	LBB22_22
## BB#21:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	24(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -256(%rbp)
	jmp	LBB22_28
LBB22_22:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	128(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*48(%rdx)
	movl	%eax, -392(%rbp)
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	80(%rcx), %rdx
	movq	72(%rcx), %rdi
	subq	%rdi, %rdx
	movq	%rdx, -256(%rbp)
	cmpl	$0, -392(%rbp)
	jle	LBB22_24
## BB#23:
	movslq	-392(%rbp), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-408(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -88(%rbp)
	movq	-88(%rbp), %rdx
	movq	24(%rdx), %rdx
	subq	%rdx, %rcx
	imulq	%rcx, %rax
	movq	-256(%rbp), %rcx
	addq	%rax, %rcx
	movq	%rcx, -256(%rbp)
	jmp	LBB22_27
LBB22_24:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	cmpq	32(%rcx), %rax
	je	LBB22_26
## BB#25:
	leaq	-384(%rbp), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	128(%rcx), %rdx
	movq	64(%rcx), %rsi
	movq	72(%rcx), %rdi
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-408(%rbp), %r8         ## 8-byte Reload
	movq	%r8, -120(%rbp)
	movq	-120(%rbp), %r8
	movq	16(%r8), %r8
	subq	%r8, %rcx
	movq	%rdx, -136(%rbp)
	movq	%rax, -144(%rbp)
	movq	%rsi, -152(%rbp)
	movq	%rdi, -160(%rbp)
	movq	%rcx, -168(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rcx
	movq	64(%rcx), %rcx
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %r8
	movq	%rdi, -448(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-448(%rbp), %rax        ## 8-byte Reload
	movq	%rcx, -456(%rbp)        ## 8-byte Spill
	movq	%rax, %rcx
	movq	-456(%rbp), %r9         ## 8-byte Reload
	callq	*%r9
	movl	%eax, -396(%rbp)
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	72(%rcx), %rdx
	movq	64(%rcx), %rsi
	subq	%rsi, %rdx
	movslq	-396(%rbp), %rsi
	subq	%rsi, %rdx
	movq	-256(%rbp), %rsi
	addq	%rdx, %rsi
	movq	%rsi, -256(%rbp)
	movb	$1, -385(%rbp)
LBB22_26:
	jmp	LBB22_27
LBB22_27:
	jmp	LBB22_28
LBB22_28:
	movl	$1, %edx
	movabsq	$0, %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	movq	120(%rcx), %rdi
	subq	-256(%rbp), %rax
	movq	%rax, %rsi
	callq	_fseeko
	cmpl	$0, %eax
	je	LBB22_30
## BB#29:
	movl	$-1, -212(%rbp)
	jmp	LBB22_35
LBB22_30:
	testb	$1, -385(%rbp)
	je	LBB22_32
## BB#31:
	movabsq	$128, %rdx
	leaq	-384(%rbp), %rax
	movq	-408(%rbp), %rcx        ## 8-byte Reload
	addq	$136, %rcx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	_memcpy
LBB22_32:
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movq	64(%rax), %rcx
	movq	%rcx, 80(%rax)
	movq	%rcx, 72(%rax)
	movq	%rax, -176(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -192(%rbp)
	movq	$0, -200(%rbp)
	movq	-176(%rbp), %rax
	movq	-184(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-192(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-200(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-408(%rbp), %rax        ## 8-byte Reload
	movl	$0, 396(%rax)
LBB22_33:
	jmp	LBB22_34
LBB22_34:
	movl	$0, -212(%rbp)
LBB22_35:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movl	-212(%rbp), %ecx
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rax
	movl	%ecx, -460(%rbp)        ## 4-byte Spill
	jne	LBB22_37
## BB#36:                               ## %SP_return
	movl	-460(%rbp), %eax        ## 4-byte Reload
	addq	$464, %rsp              ## imm = 0x1D0
	popq	%rbp
	ret
LBB22_37:                               ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp290:
	.cfi_def_cfa_offset 16
Ltmp291:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp292:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$792, %rsp              ## imm = 0x318
Ltmp293:
	.cfi_offset %rbx, -24
	movq	%rdi, -608(%rbp)
	movq	-608(%rbp), %rdi
	cmpq	$0, 120(%rdi)
	movq	%rdi, -712(%rbp)        ## 8-byte Spill
	jne	LBB23_2
## BB#1:
	movl	$-1, -596(%rbp)
	jmp	LBB23_36
LBB23_2:
	movq	-712(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv
	andb	$1, %al
	movb	%al, -609(%rbp)
	movq	-712(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -352(%rbp)
	movq	-352(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	jne	LBB23_4
## BB#3:
	leaq	-610(%rbp), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 32(%rax)
LBB23_4:
	testb	$1, -609(%rbp)
	je	LBB23_6
## BB#5:
	movabsq	$0, %rax
	movq	%rax, -720(%rbp)        ## 8-byte Spill
	jmp	LBB23_10
LBB23_6:
	leaq	-104(%rbp), %rax
	leaq	-640(%rbp), %rcx
	leaq	-632(%rbp), %rdx
	movq	-712(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -48(%rbp)
	movq	32(%rsi), %rdi
	movq	%rsi, -56(%rbp)
	movq	16(%rsi), %r8
	subq	%r8, %rdi
	movq	%rdi, %r8
	shrq	$63, %r8
	addq	%r8, %rdi
	sarq	%rdi
	movq	%rdi, -632(%rbp)
	movq	$4, -640(%rbp)
	movq	%rdx, -112(%rbp)
	movq	%rcx, -120(%rbp)
	movq	-112(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movq	%rcx, -88(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	LBB23_8
## BB#7:
	movq	-96(%rbp), %rax
	movq	%rax, -728(%rbp)        ## 8-byte Spill
	jmp	LBB23_9
LBB23_8:
	movq	-88(%rbp), %rax
	movq	%rax, -728(%rbp)        ## 8-byte Spill
LBB23_9:                                ## %_ZNSt3__13minImEERKT_S3_S3_.exit3
	movq	-728(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -720(%rbp)        ## 8-byte Spill
LBB23_10:
	movq	-720(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -624(%rbp)
	movl	$-1, -644(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	24(%rax), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -144(%rbp)
	movq	-144(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jne	LBB23_32
## BB#11:
	movabsq	$0, %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -152(%rbp)
	movq	-152(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -160(%rbp)
	movq	-160(%rbp), %rcx
	movq	32(%rcx), %rcx
	subq	-624(%rbp), %rax
	addq	%rax, %rcx
	movq	-624(%rbp), %rax
	shlq	$0, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	_memmove
	movq	-712(%rbp), %rax        ## 8-byte Reload
	testb	$1, 402(%rax)
	je	LBB23_15
## BB#12:
	movabsq	$1, %rsi
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-176(%rbp), %rcx
	movq	16(%rcx), %rcx
	subq	%rcx, %rax
	subq	-624(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	16(%rax), %rax
	addq	-624(%rbp), %rax
	movq	-656(%rbp), %rdx
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	120(%rcx), %rcx
	movq	%rax, %rdi
	callq	_fread
	movq	%rax, -656(%rbp)
	cmpq	$0, -656(%rbp)
	je	LBB23_14
## BB#13:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-192(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-712(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-200(%rbp), %rdx
	movq	16(%rdx), %rdx
	addq	-624(%rbp), %rdx
	movq	-712(%rbp), %rsi        ## 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-208(%rbp), %rsi
	movq	16(%rsi), %rsi
	addq	-624(%rbp), %rsi
	addq	-656(%rbp), %rsi
	movq	%rax, -216(%rbp)
	movq	%rcx, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rsi, -240(%rbp)
	movq	-216(%rbp), %rax
	movq	-224(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-232(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-240(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movb	(%rax), %dil
	movb	%dil, -249(%rbp)
	movzbl	-249(%rbp), %r8d
	movl	%r8d, -644(%rbp)
LBB23_14:
	jmp	LBB23_31
LBB23_15:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	64(%rax), %rdi
	movq	72(%rax), %rsi
	movq	80(%rax), %rcx
	movq	72(%rax), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	callq	_memmove
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	64(%rax), %rcx
	movq	80(%rax), %rdx
	movq	72(%rax), %rsi
	subq	%rsi, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 72(%rax)
	movq	64(%rax), %rcx
	movq	64(%rax), %rdx
	addq	$88, %rax
	cmpq	%rax, %rdx
	movq	%rcx, -736(%rbp)        ## 8-byte Spill
	jne	LBB23_17
## BB#16:
	movabsq	$8, %rax
	movq	%rax, -744(%rbp)        ## 8-byte Spill
	jmp	LBB23_18
LBB23_17:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	96(%rax), %rcx
	movq	%rcx, -744(%rbp)        ## 8-byte Spill
LBB23_18:
	movq	-744(%rbp), %rax        ## 8-byte Reload
	leaq	-304(%rbp), %rcx
	leaq	-680(%rbp), %rdx
	leaq	-672(%rbp), %rsi
	movq	-736(%rbp), %rdi        ## 8-byte Reload
	addq	%rax, %rdi
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rdi, 80(%rax)
	movq	112(%rax), %rdi
	subq	-624(%rbp), %rdi
	movq	%rdi, -672(%rbp)
	movq	80(%rax), %rdi
	movq	72(%rax), %r8
	subq	%r8, %rdi
	movq	%rdi, -680(%rbp)
	movq	%rsi, -312(%rbp)
	movq	%rdx, -320(%rbp)
	movq	-312(%rbp), %rdx
	movq	-320(%rbp), %rsi
	movq	%rdx, -288(%rbp)
	movq	%rsi, -296(%rbp)
	movq	-296(%rbp), %rdx
	movq	-288(%rbp), %rsi
	movq	%rcx, -264(%rbp)
	movq	%rdx, -272(%rbp)
	movq	%rsi, -280(%rbp)
	movq	-272(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-280(%rbp), %rdx
	cmpq	(%rdx), %rcx
	jae	LBB23_20
## BB#19:
	movq	-296(%rbp), %rax
	movq	%rax, -752(%rbp)        ## 8-byte Spill
	jmp	LBB23_21
LBB23_20:
	movq	-288(%rbp), %rax
	movq	%rax, -752(%rbp)        ## 8-byte Spill
LBB23_21:                               ## %_ZNSt3__13minImEERKT_S3_S3_.exit
	movq	-752(%rbp), %rax        ## 8-byte Reload
	movabsq	$128, %rdx
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	addq	$264, %rax              ## imm = 0x108
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	addq	$136, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_memcpy
	movabsq	$1, %rsi
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	72(%rax), %rdi
	movq	-664(%rbp), %rdx
	movq	120(%rax), %rcx
	callq	_fread
	movq	%rax, -696(%rbp)
	cmpq	$0, -696(%rbp)
	je	LBB23_30
## BB#22:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	cmpq	$0, 128(%rax)
	jne	LBB23_24
## BB#23:
	movabsq	$8, %rdi
	callq	___cxa_allocate_exception
	movq	%rax, %rdi
	movq	%rax, -760(%rbp)        ## 8-byte Spill
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rax
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdi
	movq	-760(%rbp), %rcx        ## 8-byte Reload
	movq	%rdi, -768(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-768(%rbp), %rdx        ## 8-byte Reload
	callq	___cxa_throw
LBB23_24:
	leaq	-704(%rbp), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	72(%rcx), %rdx
	addq	-696(%rbp), %rdx
	movq	%rdx, 80(%rcx)
	movq	128(%rcx), %rdx
	addq	$136, %rcx
	movq	-712(%rbp), %rsi        ## 8-byte Reload
	movq	64(%rsi), %rdi
	movq	80(%rsi), %r8
	addq	$72, %rsi
	movq	-712(%rbp), %r9         ## 8-byte Reload
	movq	%r9, -336(%rbp)
	movq	-336(%rbp), %r9
	movq	16(%r9), %r9
	addq	-624(%rbp), %r9
	movq	-712(%rbp), %r10        ## 8-byte Reload
	movq	%r10, -344(%rbp)
	movq	-344(%rbp), %r10
	movq	16(%r10), %r10
	movq	-712(%rbp), %r11        ## 8-byte Reload
	addq	112(%r11), %r10
	movq	%rdx, -360(%rbp)
	movq	%rcx, -368(%rbp)
	movq	%rdi, -376(%rbp)
	movq	%r8, -384(%rbp)
	movq	%rsi, -392(%rbp)
	movq	%r9, -400(%rbp)
	movq	%r10, -408(%rbp)
	movq	%rax, -416(%rbp)
	movq	-360(%rbp), %rax
	movq	(%rax), %rcx
	movq	32(%rcx), %rcx
	movq	-368(%rbp), %rsi
	movq	-376(%rbp), %rdx
	movq	-384(%rbp), %rdi
	movq	-392(%rbp), %r8
	movq	-400(%rbp), %r9
	movq	-408(%rbp), %r10
	movq	-416(%rbp), %rbx
	movq	%rdi, -776(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-776(%rbp), %rax        ## 8-byte Reload
	movq	%rcx, -784(%rbp)        ## 8-byte Spill
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	-784(%rbp), %r10        ## 8-byte Reload
	callq	*%r10
	movl	%eax, -684(%rbp)
	cmpl	$3, -684(%rbp)
	jne	LBB23_26
## BB#25:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	64(%rcx), %rdx
	movq	64(%rcx), %rsi
	movq	80(%rcx), %rdi
	movq	%rax, -424(%rbp)
	movq	%rdx, -432(%rbp)
	movq	%rsi, -440(%rbp)
	movq	%rdi, -448(%rbp)
	movq	-424(%rbp), %rax
	movq	-432(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-440(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-448(%rbp), %rdx
	movq	%rdx, 32(%rax)
	movq	%rcx, -456(%rbp)
	movq	-456(%rbp), %rax
	movq	24(%rax), %rax
	movb	(%rax), %r8b
	movb	%r8b, -457(%rbp)
	movzbl	-457(%rbp), %r9d
	movl	%r9d, -644(%rbp)
	jmp	LBB23_29
LBB23_26:
	movq	-704(%rbp), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -472(%rbp)
	movq	-472(%rbp), %rcx
	movq	16(%rcx), %rcx
	addq	-624(%rbp), %rcx
	cmpq	%rcx, %rax
	je	LBB23_28
## BB#27:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -480(%rbp)
	movq	-480(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-712(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -488(%rbp)
	movq	-488(%rbp), %rdx
	movq	16(%rdx), %rdx
	addq	-624(%rbp), %rdx
	movq	-704(%rbp), %rsi
	movq	%rax, -496(%rbp)
	movq	%rcx, -504(%rbp)
	movq	%rdx, -512(%rbp)
	movq	%rsi, -520(%rbp)
	movq	-496(%rbp), %rax
	movq	-504(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-512(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-520(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	24(%rax), %rax
	movb	(%rax), %dil
	movb	%dil, -529(%rbp)
	movzbl	-529(%rbp), %r8d
	movl	%r8d, -644(%rbp)
LBB23_28:
	jmp	LBB23_29
LBB23_29:
	jmp	LBB23_30
LBB23_30:
	jmp	LBB23_31
LBB23_31:
	jmp	LBB23_33
LBB23_32:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	movq	24(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -545(%rbp)
	movzbl	-545(%rbp), %edx
	movl	%edx, -644(%rbp)
LBB23_33:
	leaq	-610(%rbp), %rax
	movq	-712(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -560(%rbp)
	movq	-560(%rbp), %rcx
	cmpq	%rax, 16(%rcx)
	jne	LBB23_35
## BB#34:
	movq	-712(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -568(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -584(%rbp)
	movq	$0, -592(%rbp)
	movq	-568(%rbp), %rax
	movq	-576(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-584(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-592(%rbp), %rcx
	movq	%rcx, 32(%rax)
LBB23_35:
	movl	-644(%rbp), %eax
	movl	%eax, -596(%rbp)
LBB23_36:
	movl	-596(%rbp), %eax
	addq	$792, %rsp              ## imm = 0x318
	popq	%rbx
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp296:
	.cfi_def_cfa_offset 16
Ltmp297:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp298:
	.cfi_def_cfa_register %rbp
	pushq	%rax
	movq	%rdi, -112(%rbp)
	movl	%esi, -116(%rbp)
	movq	-112(%rbp), %rdi
	cmpq	$0, 120(%rdi)
	movq	%rdi, -128(%rbp)        ## 8-byte Spill
	je	LBB24_11
## BB#1:
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	-128(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jae	LBB24_11
## BB#2:
	movl	-116(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$-1, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	LBB24_7
## BB#3:
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movl	$-1, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	movl	-116(%rbp), %ecx
	movl	%ecx, -40(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	$-1, -36(%rbp)
	movl	-32(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	jne	LBB24_5
## BB#4:
	movl	$0, %eax
	movl	%eax, -132(%rbp)        ## 4-byte Spill
	jmp	LBB24_6
LBB24_5:
	movl	-40(%rbp), %eax
	movl	%eax, -132(%rbp)        ## 4-byte Spill
LBB24_6:                                ## %_ZNSt3__111char_traitsIcE7not_eofEi.exit
	movl	-132(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -100(%rbp)
	jmp	LBB24_12
LBB24_7:
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movl	392(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	LBB24_9
## BB#8:
	movl	-116(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movq	-128(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rdx
	movb	-1(%rdx), %sil
	movb	%cl, -57(%rbp)
	movb	%sil, -58(%rbp)
	movsbl	-57(%rbp), %eax
	movsbl	-58(%rbp), %edi
	cmpl	%edi, %eax
	jne	LBB24_10
LBB24_9:
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movl	$-1, -76(%rbp)
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %ecx
	movq	24(%rax), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, 24(%rax)
	movl	-116(%rbp), %ecx
	movl	%ecx, -80(%rbp)
	movl	-80(%rbp), %ecx
	movb	%cl, %dil
	movq	-128(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movb	%dil, (%rax)
	movl	-116(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	jmp	LBB24_12
LBB24_10:
	jmp	LBB24_11
LBB24_11:
	movl	$-1, -100(%rbp)
LBB24_12:
	movl	-100(%rbp), %eax
	addq	$8, %rsp
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp301:
	.cfi_def_cfa_offset 16
Ltmp302:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp303:
	.cfi_def_cfa_register %rbp
	subq	$496, %rsp              ## imm = 0x1F0
	movq	%rdi, -352(%rbp)
	movl	%esi, -356(%rbp)
	movq	-352(%rbp), %rdi
	cmpq	$0, 120(%rdi)
	movq	%rdi, -432(%rbp)        ## 8-byte Spill
	jne	LBB25_2
## BB#1:
	movl	$-1, -344(%rbp)
	jmp	LBB25_37
LBB25_2:
	movq	-432(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv
	movq	-432(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -144(%rbp)
	movq	-144(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -368(%rbp)
	movq	-432(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -376(%rbp)
	movl	-356(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	$-1, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	je	LBB25_6
## BB#3:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	LBB25_5
## BB#4:
	leaq	-357(%rbp), %rax
	movq	-432(%rbp), %rcx        ## 8-byte Reload
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rcx, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	%rcx, 40(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 56(%rax)
LBB25_5:
	movl	-356(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rdx
	movq	48(%rdx), %rdx
	movb	%cl, (%rdx)
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -72(%rbp)
	movl	$1, -76(%rbp)
	movq	-72(%rbp), %rdx
	movl	-76(%rbp), %eax
	movq	48(%rdx), %rsi
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, 48(%rdx)
LBB25_6:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	48(%rax), %rax
	movq	-432(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	cmpq	40(%rcx), %rax
	je	LBB25_33
## BB#7:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	testb	$1, 402(%rax)
	je	LBB25_11
## BB#8:
	movabsq	$1, %rsi
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	48(%rax), %rax
	movq	-432(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	40(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -384(%rbp)
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-384(%rbp), %rdx
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	120(%rax), %rcx
	callq	_fwrite
	cmpq	-384(%rbp), %rax
	je	LBB25_10
## BB#9:
	movl	$-1, -344(%rbp)
	jmp	LBB25_37
LBB25_10:
	jmp	LBB25_32
LBB25_11:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	64(%rax), %rcx
	movq	%rcx, -392(%rbp)
LBB25_12:                               ## =>This Inner Loop Header: Depth=1
	movq	-432(%rbp), %rax        ## 8-byte Reload
	cmpq	$0, 128(%rax)
	jne	LBB25_14
## BB#13:
	movabsq	$8, %rdi
	callq	___cxa_allocate_exception
	movq	%rax, %rdi
	movq	%rax, -440(%rbp)        ## 8-byte Spill
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rax
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdi
	movq	-440(%rbp), %rcx        ## 8-byte Reload
	movq	%rdi, -448(%rbp)        ## 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	movq	-448(%rbp), %rdx        ## 8-byte Reload
	callq	___cxa_throw
LBB25_14:                               ##   in Loop: Header=BB25_12 Depth=1
	leaq	-392(%rbp), %rax
	leaq	-408(%rbp), %rcx
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	128(%rdx), %rsi
	addq	$136, %rdx
	movq	-432(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	-432(%rbp), %r8         ## 8-byte Reload
	movq	%r8, -136(%rbp)
	movq	-136(%rbp), %r8
	movq	48(%r8), %r8
	movq	-432(%rbp), %r9         ## 8-byte Reload
	movq	64(%r9), %r10
	movq	64(%r9), %r11
	addq	96(%r9), %r11
	movq	%rsi, -152(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rdi, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r10, -192(%rbp)
	movq	%r11, -200(%rbp)
	movq	%rax, -208(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rcx
	movq	24(%rcx), %rcx
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %rdx
	movq	-176(%rbp), %rdi
	movq	-184(%rbp), %r8
	movq	-192(%rbp), %r9
	movq	-200(%rbp), %r10
	movq	-208(%rbp), %r11
	movq	%rdi, -456(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	-456(%rbp), %rax        ## 8-byte Reload
	movq	%rcx, -464(%rbp)        ## 8-byte Spill
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movq	-464(%rbp), %r10        ## 8-byte Reload
	callq	*%r10
	movl	%eax, -396(%rbp)
	movq	-408(%rbp), %rcx
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-216(%rbp), %rdx
	cmpq	40(%rdx), %rcx
	jne	LBB25_16
## BB#15:
	movl	$-1, -344(%rbp)
	jmp	LBB25_37
LBB25_16:                               ##   in Loop: Header=BB25_12 Depth=1
	cmpl	$3, -396(%rbp)
	jne	LBB25_20
## BB#17:                               ##   in Loop: Header=BB25_12 Depth=1
	movabsq	$1, %rsi
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	48(%rax), %rax
	movq	-432(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movq	40(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, -416(%rbp)
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-416(%rbp), %rdx
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	120(%rax), %rcx
	callq	_fwrite
	cmpq	-416(%rbp), %rax
	je	LBB25_19
## BB#18:
	movl	$-1, -344(%rbp)
	jmp	LBB25_37
LBB25_19:                               ##   in Loop: Header=BB25_12 Depth=1
	jmp	LBB25_29
LBB25_20:                               ##   in Loop: Header=BB25_12 Depth=1
	cmpl	$0, -396(%rbp)
	je	LBB25_22
## BB#21:                               ##   in Loop: Header=BB25_12 Depth=1
	cmpl	$1, -396(%rbp)
	jne	LBB25_27
LBB25_22:                               ##   in Loop: Header=BB25_12 Depth=1
	movabsq	$1, %rsi
	movq	-392(%rbp), %rax
	movq	-432(%rbp), %rcx        ## 8-byte Reload
	movq	64(%rcx), %rdx
	subq	%rdx, %rax
	movq	%rax, -424(%rbp)
	movq	64(%rcx), %rdi
	movq	-424(%rbp), %rdx
	movq	120(%rcx), %rcx
	callq	_fwrite
	cmpq	-424(%rbp), %rax
	je	LBB25_24
## BB#23:
	movl	$-1, -344(%rbp)
	jmp	LBB25_37
LBB25_24:                               ##   in Loop: Header=BB25_12 Depth=1
	cmpl	$1, -396(%rbp)
	jne	LBB25_26
## BB#25:                               ##   in Loop: Header=BB25_12 Depth=1
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	-408(%rbp), %rcx
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-248(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, -256(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rdx, -272(%rbp)
	movq	-256(%rbp), %rax
	movq	-264(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	%rcx, 40(%rax)
	movq	-272(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	-432(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -280(%rbp)
	movq	-280(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	-432(%rbp), %rdx        ## 8-byte Reload
	movq	%rdx, -288(%rbp)
	movq	-288(%rbp), %rdx
	movq	40(%rdx), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %esi
	movq	%rax, -296(%rbp)
	movl	%esi, -300(%rbp)
	movq	-296(%rbp), %rax
	movl	-300(%rbp), %esi
	movq	48(%rax), %rcx
	movslq	%esi, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 48(%rax)
LBB25_26:                               ##   in Loop: Header=BB25_12 Depth=1
	jmp	LBB25_28
LBB25_27:
	movl	$-1, -344(%rbp)
	jmp	LBB25_37
LBB25_28:                               ##   in Loop: Header=BB25_12 Depth=1
	jmp	LBB25_29
LBB25_29:                               ##   in Loop: Header=BB25_12 Depth=1
	jmp	LBB25_30
LBB25_30:                               ##   in Loop: Header=BB25_12 Depth=1
	cmpl	$1, -396(%rbp)
	je	LBB25_12
## BB#31:
	jmp	LBB25_32
LBB25_32:
	movq	-432(%rbp), %rax        ## 8-byte Reload
	movq	-368(%rbp), %rcx
	movq	-376(%rbp), %rdx
	movq	%rax, -312(%rbp)
	movq	%rcx, -320(%rbp)
	movq	%rdx, -328(%rbp)
	movq	-312(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	%rcx, 40(%rax)
	movq	-328(%rbp), %rcx
	movq	%rcx, 56(%rax)
LBB25_33:
	movl	-356(%rbp), %eax
	movl	%eax, -340(%rbp)
	movl	-340(%rbp), %eax
	movl	%eax, -332(%rbp)
	movl	$-1, -336(%rbp)
	movl	-332(%rbp), %eax
	cmpl	-336(%rbp), %eax
	jne	LBB25_35
## BB#34:
	movl	$0, %eax
	movl	%eax, -468(%rbp)        ## 4-byte Spill
	jmp	LBB25_36
LBB25_35:
	movl	-340(%rbp), %eax
	movl	%eax, -468(%rbp)        ## 4-byte Spill
LBB25_36:                               ## %_ZNSt3__111char_traitsIcE7not_eofEi.exit
	movl	-468(%rbp), %eax        ## 4-byte Reload
	movl	%eax, -344(%rbp)
LBB25_37:
	movl	-344(%rbp), %eax
	addq	$496, %rsp              ## imm = 0x1F0
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp306:
	.cfi_def_cfa_offset 16
Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp308:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -112(%rbp)
	movq	-112(%rbp), %rdi
	movl	396(%rdi), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	movq	%rdi, -120(%rbp)        ## 8-byte Spill
	jne	LBB26_8
## BB#1:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-96(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movq	-104(%rbp), %rcx
	movq	%rcx, 32(%rax)
	movq	-120(%rbp), %rax        ## 8-byte Reload
	cmpq	$8, 96(%rax)
	jbe	LBB26_6
## BB#2:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	testb	$1, 402(%rax)
	je	LBB26_4
## BB#3:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	64(%rcx), %rdx
	movq	64(%rcx), %rsi
	movq	96(%rcx), %rdi
	subq	$1, %rdi
	addq	%rdi, %rsi
	movq	%rax, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 56(%rax)
	jmp	LBB26_5
LBB26_4:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	-120(%rbp), %rcx        ## 8-byte Reload
	movq	104(%rcx), %rdx
	movq	104(%rcx), %rsi
	movq	112(%rcx), %rdi
	subq	$1, %rdi
	addq	%rdi, %rsi
	movq	%rax, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 48(%rax)
	movq	%rdx, 40(%rax)
	movq	-48(%rbp), %rdx
	movq	%rdx, 56(%rax)
LBB26_5:
	jmp	LBB26_7
LBB26_6:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	%rcx, 40(%rax)
	movq	-72(%rbp), %rcx
	movq	%rcx, 56(%rax)
LBB26_7:
	movq	-120(%rbp), %rax        ## 8-byte Reload
	movl	$16, 396(%rax)
LBB26_8:
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp311:
	.cfi_def_cfa_offset 16
Ltmp312:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp313:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -104(%rbp)
	movq	-104(%rbp), %rdi
	movl	396(%rdi), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	movq	%rdi, -112(%rbp)        ## 8-byte Spill
	jne	LBB27_5
## BB#1:
	movq	-112(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, 48(%rax)
	movq	%rcx, 40(%rax)
	movq	-88(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	-112(%rbp), %rax        ## 8-byte Reload
	testb	$1, 402(%rax)
	je	LBB27_3
## BB#2:
	movq	-112(%rbp), %rax        ## 8-byte Reload
	movq	-112(%rbp), %rcx        ## 8-byte Reload
	movq	64(%rcx), %rdx
	movq	64(%rcx), %rsi
	addq	96(%rcx), %rsi
	movq	64(%rcx), %rdi
	addq	96(%rcx), %rdi
	movq	%rax, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rdx
	movq	%rdx, 32(%rax)
	jmp	LBB27_4
LBB27_3:
	movq	-112(%rbp), %rax        ## 8-byte Reload
	movq	-112(%rbp), %rcx        ## 8-byte Reload
	movq	104(%rcx), %rdx
	movq	104(%rcx), %rsi
	addq	112(%rcx), %rsi
	movq	104(%rcx), %rdi
	addq	112(%rcx), %rdi
	movq	%rax, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-64(%rbp), %rdx
	movq	%rdx, 32(%rax)
LBB27_4:
	movq	-112(%rbp), %rax        ## 8-byte Reload
	movl	$8, 396(%rax)
	movb	$1, -89(%rbp)
	jmp	LBB27_6
LBB27_5:
	movb	$0, -89(%rbp)
LBB27_6:
	movb	-89(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.cfi_endproc

	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.weak_definition	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
Leh_func_begin28:
	.cfi_lsda 16, Lexception28
## BB#0:
	pushq	%rbp
Ltmp334:
	.cfi_def_cfa_offset 16
Ltmp335:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp336:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	%rdi, %rax
	movq	%rdi, -160(%rbp)        ## 8-byte Spill
	movq	%rax, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
	leaq	-104(%rbp), %rax
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rdi
	addq	$16, %rdi
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	movq	%rdi, (%rcx)
	movq	$0, 64(%rcx)
	movq	$0, 72(%rcx)
	movq	$0, 80(%rcx)
	movq	$0, 96(%rcx)
	movq	$0, 104(%rcx)
	movq	$0, 112(%rcx)
	movq	$0, 120(%rcx)
	addq	$128, %rcx
	movq	%rax, -88(%rbp)
	movq	$-1, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -72(%rbp)
	movq	%rdi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-104(%rbp), %rax
	movq	%rcx, -168(%rbp)        ## 8-byte Spill
	movq	%rax, -176(%rbp)        ## 8-byte Spill
## BB#1:
	leaq	-136(%rbp), %rax
	movq	-176(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, -136(%rbp)
	movq	%rax, -64(%rbp)
## BB#2:
	movl	$0, %esi
	movabsq	$128, %rdx
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	$0, (%rax)
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	addq	$136, %rcx
	movq	%rcx, %rdi
	callq	_memset
	movl	$0, %esi
	movabsq	$128, %rdx
	movq	-160(%rbp), %rax        ## 8-byte Reload
	addq	$264, %rax              ## imm = 0x108
	movq	%rax, %rdi
	callq	_memset
	leaq	-144(%rbp), %rdi
	movq	-160(%rbp), %rax        ## 8-byte Reload
	movl	$0, 392(%rax)
	movl	$0, 396(%rax)
	movb	$0, 400(%rax)
	movb	$0, 401(%rax)
	movb	$0, 402(%rax)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
## BB#3:
	leaq	-144(%rbp), %rax
	movq	%rax, -32(%rbp)
Ltmp314:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9has_facetERNS0_2idE
Ltmp315:
	movb	%al, -177(%rbp)         ## 1-byte Spill
	jmp	LBB28_5
LBB28_4:
Ltmp316:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	___cxa_call_unexpected
LBB28_5:                                ## %_ZNSt3__19has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE.exit
Ltmp317:
	leaq	-144(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp318:
	jmp	LBB28_6
LBB28_6:
	movb	-177(%rbp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB28_7
	jmp	LBB28_15
LBB28_7:
	leaq	-152(%rbp), %rdi
	movq	-160(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
## BB#8:
	leaq	-152(%rbp), %rax
	movq	%rax, -16(%rbp)
Ltmp319:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp320:
	movq	%rax, -192(%rbp)        ## 8-byte Spill
	jmp	LBB28_9
LBB28_9:                                ## %_ZNSt3__19use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE.exit
	movq	-192(%rbp), %rax        ## 8-byte Reload
	movq	%rax, -200(%rbp)        ## 8-byte Spill
## BB#10:
	movq	-160(%rbp), %rax        ## 8-byte Reload
	movq	-200(%rbp), %rcx        ## 8-byte Reload
	movq	%rcx, 128(%rax)
Ltmp324:
	leaq	-152(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp325:
	jmp	LBB28_11
LBB28_11:
	movq	-160(%rbp), %rax        ## 8-byte Reload
	movq	128(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*56(%rdx)
	andb	$1, %al
	movq	-160(%rbp), %rcx        ## 8-byte Reload
	movb	%al, 402(%rcx)
	jmp	LBB28_15
LBB28_12:
Ltmp328:
	movl	%edx, %ecx
	movq	%rax, -120(%rbp)
	movl	%ecx, -124(%rbp)
	jmp	LBB28_17
LBB28_13:
Ltmp321:
	movl	%edx, %ecx
	movq	%rax, -120(%rbp)
	movl	%ecx, -124(%rbp)
Ltmp322:
	leaq	-152(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
Ltmp323:
	jmp	LBB28_14
LBB28_14:
	jmp	LBB28_17
LBB28_15:
	movq	-160(%rbp), %rax        ## 8-byte Reload
	movq	(%rax), %rcx
	movq	24(%rcx), %rcx
Ltmp326:
	xorl	%esi, %esi
	movl	$4096, %edx             ## imm = 0x1000
	movq	%rax, %rdi
	callq	*%rcx
Ltmp327:
	movq	%rax, -208(%rbp)        ## 8-byte Spill
	jmp	LBB28_16
LBB28_16:
	addq	$224, %rsp
	popq	%rbp
	ret
LBB28_17:
Ltmp329:
	movq	-160(%rbp), %rdi        ## 8-byte Reload
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
Ltmp330:
	jmp	LBB28_18
LBB28_18:
	jmp	LBB28_19
LBB28_19:
	movq	-120(%rbp), %rdi
	callq	__Unwind_Resume
LBB28_20:
Ltmp331:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -212(%rbp)        ## 4-byte Spill
	callq	___clang_call_terminate
	.cfi_endproc
Leh_func_end28:
	.section	__TEXT,__gcc_except_tab
	.align	2
GCC_except_table28:
Lexception28:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	 "\232\201\200"         ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	 "\217\001"             ## Call site table length
Lset205 = Leh_func_begin28-Leh_func_begin28 ## >> Call Site 1 <<
	.long	Lset205
Lset206 = Ltmp314-Leh_func_begin28      ##   Call between Leh_func_begin28 and Ltmp314
	.long	Lset206
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset207 = Ltmp314-Leh_func_begin28      ## >> Call Site 2 <<
	.long	Lset207
Lset208 = Ltmp315-Ltmp314               ##   Call between Ltmp314 and Ltmp315
	.long	Lset208
Lset209 = Ltmp316-Leh_func_begin28      ##     jumps to Ltmp316
	.long	Lset209
	.byte	1                       ##   On action: 1
Lset210 = Ltmp315-Leh_func_begin28      ## >> Call Site 3 <<
	.long	Lset210
Lset211 = Ltmp317-Ltmp315               ##   Call between Ltmp315 and Ltmp317
	.long	Lset211
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset212 = Ltmp317-Leh_func_begin28      ## >> Call Site 4 <<
	.long	Lset212
Lset213 = Ltmp318-Ltmp317               ##   Call between Ltmp317 and Ltmp318
	.long	Lset213
Lset214 = Ltmp328-Leh_func_begin28      ##     jumps to Ltmp328
	.long	Lset214
	.byte	0                       ##   On action: cleanup
Lset215 = Ltmp319-Leh_func_begin28      ## >> Call Site 5 <<
	.long	Lset215
Lset216 = Ltmp320-Ltmp319               ##   Call between Ltmp319 and Ltmp320
	.long	Lset216
Lset217 = Ltmp321-Leh_func_begin28      ##     jumps to Ltmp321
	.long	Lset217
	.byte	0                       ##   On action: cleanup
Lset218 = Ltmp324-Leh_func_begin28      ## >> Call Site 6 <<
	.long	Lset218
Lset219 = Ltmp325-Ltmp324               ##   Call between Ltmp324 and Ltmp325
	.long	Lset219
Lset220 = Ltmp328-Leh_func_begin28      ##     jumps to Ltmp328
	.long	Lset220
	.byte	0                       ##   On action: cleanup
Lset221 = Ltmp325-Leh_func_begin28      ## >> Call Site 7 <<
	.long	Lset221
Lset222 = Ltmp322-Ltmp325               ##   Call between Ltmp325 and Ltmp322
	.long	Lset222
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset223 = Ltmp322-Leh_func_begin28      ## >> Call Site 8 <<
	.long	Lset223
Lset224 = Ltmp323-Ltmp322               ##   Call between Ltmp322 and Ltmp323
	.long	Lset224
Lset225 = Ltmp331-Leh_func_begin28      ##     jumps to Ltmp331
	.long	Lset225
	.byte	3                       ##   On action: 2
Lset226 = Ltmp326-Leh_func_begin28      ## >> Call Site 9 <<
	.long	Lset226
Lset227 = Ltmp327-Ltmp326               ##   Call between Ltmp326 and Ltmp327
	.long	Lset227
Lset228 = Ltmp328-Leh_func_begin28      ##     jumps to Ltmp328
	.long	Lset228
	.byte	0                       ##   On action: cleanup
Lset229 = Ltmp329-Leh_func_begin28      ## >> Call Site 10 <<
	.long	Lset229
Lset230 = Ltmp330-Ltmp329               ##   Call between Ltmp329 and Ltmp330
	.long	Lset230
Lset231 = Ltmp331-Leh_func_begin28      ##     jumps to Ltmp331
	.long	Lset231
	.byte	3                       ##   On action: 2
Lset232 = Ltmp330-Leh_func_begin28      ## >> Call Site 11 <<
	.long	Lset232
Lset233 = Leh_func_end28-Ltmp330        ##   Call between Ltmp330 and Leh_func_end28
	.long	Lset233
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	127                     ## >> Action Record 1 <<
                                        ##   Filter TypeInfo -1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
                                        ## >> Filter TypeInfos <<
	.byte	0
	.align	2

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__Z7isasciii
	.weak_definition	__Z7isasciii
	.align	4, 0x90
__Z7isasciii:                           ## @_Z7isasciii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp339:
	.cfi_def_cfa_offset 16
Ltmp340:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp341:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	andl	$4294967168, %edi       ## imm = 0xFFFFFF80
	cmpl	$0, %edi
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	 "Please enter name of output file: "

L_.str1:                                ## @.str1
	.asciz	 "can't open output file "

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.align	4
__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	416
	.quad	0
	.quad	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.quad	-416
	.quad	-416
	.quad	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.align	4
__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE+24
	.quad	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE+24
	.quad	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE+64
	.quad	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE+64

	.section	__TEXT,__const_coal,coalesced
	.globl	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.align	4
__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.asciz	 "NSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE"

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.align	4
__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE

	.globl	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE ## @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE
	.weak_definition	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE
	.align	4
__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE:
	.quad	416
	.quad	0
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev
	.quad	-416
	.quad	-416
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.align	4
__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	0
	.quad	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi

	.section	__TEXT,__const_coal,coalesced
	.globl	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.align	4
__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.asciz	 "NSt3__113basic_filebufIcNS_11char_traitsIcEEEE"

	.section	__DATA,__datacoal_nt,coalesced
	.globl	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.align	4
__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	__TEXT,__cstring,cstring_literals
L_.str2:                                ## @.str2
	.asciz	 "w"

L_.str3:                                ## @.str3
	.asciz	 "a"

L_.str4:                                ## @.str4
	.asciz	 "r"

L_.str5:                                ## @.str5
	.asciz	 "r+"

L_.str6:                                ## @.str6
	.asciz	 "w+"

L_.str7:                                ## @.str7
	.asciz	 "a+"

L_.str8:                                ## @.str8
	.asciz	 "wb"

L_.str9:                                ## @.str9
	.asciz	 "ab"

L_.str10:                               ## @.str10
	.asciz	 "rb"

L_.str11:                               ## @.str11
	.asciz	 "r+b"

L_.str12:                               ## @.str12
	.asciz	 "w+b"

L_.str13:                               ## @.str13
	.asciz	 "a+b"

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support

.subsections_via_symbols
