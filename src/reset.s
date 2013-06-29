# -----------------------------------------------------------------------------
# Copyright (c) 2013, Sean Stasiak. All rights reserved.
# Developed by: Sean Stasiak <sstasiak@gmail.com>
# Refer to license terms in README file
# -----------------------------------------------------------------------------

    .include "lpc11xx.inc"

#
#  CRP value
#
    .equ        CRP_NONE,  0xffffffff
    .equ        CRP1,      0x12345678
    .equ        CRP2,      0x87654321
    .equ        CRP3,      0x43218765
    .equ        CRP_NOISP, 0x4e697370
    .equ        CRP_VALUE, ( CRP_NONE )

    .section    .crp
    .word       CRP_VALUE

#
#  clock gating mask to be put into AHBCLKCTRL
#
    .equ    SYS_CLK,    (1<<0)
    .equ    ROM_CLK,    (1<<1)
    .equ    RAM_CLK,    (1<<2)
    .equ    FLASHREG_CLK,   (1<<3)
    .equ    FLASHARRAY_CLK, (1<<4)
    .equ    I2C_CLK,    (1<<5)
    .equ    GPIO_CLK,   (1<<6)
    .equ    CT16B0_CLK, (1<<7)
    .equ    CT16B1_CLK, (1<<8)
    .equ    CT32B0_CLK, (1<<9)
    .equ    CT32B1_CLK, (1<<10)
    .equ    SSP0_CLK,   (1<<11)
    .equ    UART_CLK,   (1<<12)
    .equ    ADC_CLK,    (1<<13)
    .equ    WDT_CLK,    (1<<15)
    .equ    IOCON_CLK,  (1<<16)
    .equ    CAN_CLK,    (1<<17)
    .equ    SSP1_CLK,   (1<<18)
    .equ    AHBCLK, ( IOCON_CLK | UART_CLK | GPIO_CLK | FLASHARRAY_CLK | FLASHREG_CLK | RAM_CLK | ROM_CLK | SYS_CLK )

    .section    .text
    .syntax     unified
    .thumb

# -----------------------------------------------------------------------------
#   @public
#   reset: entry point
# -----------------------------------------------------------------------------
    .type       reset, function
    .global     reset
reset:                              @ get pll up asap
    ldr         r0, =SYSOSCCTRL     @ bypass sysosc
    movs        r7, #1
    str         r7, [r0]
    adds        r0, #0x20           @ adjust to SYSPLLCLKSEL
    str         r7, [r0]            @ pllsrc = sysosc
    adds        r0, #0x04           @ adjust to SYSPLLCLKUEN
    eors        r6, r6
    str         r6, [r0]            @ wr 0
    str         r7, [r0]            @ wr 1
    subs        r0, #0x3C           @ adjust to SYSPLLCTRL
    movs        r1, #0x23           @ m=4, p=2
    str         r1, [r0]
    ldr         r5, =PDRUNCFG       @ powerup pll
    ldr         r1, [r5]            @ r-m-w
    movs        r2, #(1<<7)         @ SYSPLL_PD mask
    bics        r1, r2
    str         r1, [r5]
    adds        r0, #4              @ adjust to SYSPLLSTAT

    @ here, could probably find something else to init real quick
    @ instead of blocking for a few microsecs.

1:  ldr         r1, [r0]
    cmp         r1, r7
    bne         1b                  @ wait for lock (~30 loops)

    adds        r0, #0x64           @ adjust to MAINCLKSEL
    movs        r1, #3              @ main clk = pll clk out
    str         r1, [r0]
    adds        r0, #4              @ adjust to MAINCLKUEN
    str         r6, [r0]            @ wr 0
    str         r7, [r0]            @ wr 1
#   ldr         r1, [r5]            @ shutdown IRC
#   adds        r1, #0x03           @ IRC_PD & IRCOUT_PD
#   str         r1, [r5]
    adds        r0, #0x0C           @ adjust to SYSAHBCLKCTRL
    ldr         r1, =AHBCLK         @ route clks
    str         r1, [r0]

@ TEST:
@ route clkout to verify pll output

    ldr         r0, =CLKOUTCLKDIV
    movs        r1, #48
    str         r1, [r0]    @ /48 = 1MHz

    ldr         r0, =CLKOUTCLKSEL
    movs        r1, #3
    str         r1, [r0]

    ldr         r0, =CLKOUTUEN
    str         r6, [r0]    @ wr 0
    str         r7, [r0]    @ wr 1

    ldr         r0, =PIO0.1
    movs        r1, #0xC1
    str         r1, [r0]    @ clkout mode

    bkpt        #0
# -----------------------------------------------------------------------------