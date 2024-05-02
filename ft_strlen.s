	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.globl	_ft_strlen                      ## -- Begin function ft_strlen
	.p2align	4, 0x90
_ft_strlen:                             ## @ft_strlen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	LBB0_1
LBB0_3:
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -28(%rbp)
	movq	L___const.main.str(%rip), %rax
	movq	%rax, -22(%rbp)
	movl	L___const.main.str+8(%rip), %eax
	movl	%eax, -14(%rbp)
	movw	L___const.main.str+12(%rip), %ax
	movw	%ax, -10(%rbp)
	leaq	-22(%rbp), %rdi
	callq	_ft_strlen
	movq	%rax, %rsi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB1_2
## %bb.1:
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
LBB1_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L___const.main.str:                     ## @__const.main.str
	.asciz	"Hello, World!"

L_.str:                                 ## @.str
	.asciz	"Length of string: %zu\n"

.subsections_via_symbols
