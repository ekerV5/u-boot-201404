/*
 * Copyright (C) 2009 Samsung Electronics
 * Kyungmin Park <kyungmin.park@samsung.com>
 * Minkyu Kang <mk7.kang@samsung.com>
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */
/* modied by eker */

	.globl lowlevel_init
lowlevel_init:
	mov	r9, lr

#ifdef CONFIG_SPL_BUILD
	bl clock_init	/* 时钟初始化 */
	bl ddr_init	/* DDR初始化 */

uart_asm_init:
	ldr	r0, =0xE0200000
	ldr	r1, =0x22222222
	str	r1, [r0, #0x0]			@ GPA0_CON
	ldr	r1, =0x00022222
	str	r1, [r0, #0x20]			@ GPA1_CON
#endif
	mov pc, r9	/* 返回 */
