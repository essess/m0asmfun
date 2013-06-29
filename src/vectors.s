    .section .vectors, "ax"

                            @ E# Description
    .word   topof_stack     @    inital msp value
    .word   reset           @ 1  reset
    .word   nmi             @ 2  nmi
    .word   hflt            @ 3  hard fault
    .word   defhnd          @ 4  -+-reserved
    .word   defhnd          @ 5   |
    .word   defhnd          @ 6   |
    .word   0xffffffff      @ 7  -|-chksum
    .word   defhnd          @ 8   |
    .word   defhnd          @ 9   |
    .word   defhnd          @ 10 -+
    .word   svccall         @ 11 system service call
    .word   defhnd          @ 12 -+-reserved
    .word   defhnd          @ 13 -+
    .word   pendsv          @ 14 pend service request
    .word   systick         @ 15 system tick
    .word   wu0_irq         @ 16 PIO0.0 wakeup
    .word   wu1_irq         @ 17 PIO0.1 wakeup
    .word   wu2_irq         @ 18 PIO0.2 wakeup
    .word   wu3_irq         @ 19 PIO0.3 wakeup
    .word   wu4_irq         @ 20 PIO0.4 wakeup
    .word   wu5_irq         @ 21 PIO0.5 wakeup
    .word   wu6_irq         @ 22 PIO0.6 wakeup
    .word   wu7_irq         @ 23 PIO0.7 wakeup
    .word   wu8_irq         @ 24 PIO0.8 wakeup
    .word   wu9_irq         @ 25 PIO0.9 wakeup
    .word   wu10_irq        @ 26 PIO0.10 wakeup
    .word   wu11_irq        @ 27 PIO0.11 wakeup
    .word   wu12_irq        @ 28 PIO1.0 wakeup
    .word   can_irq         @ 29
    .word   spi1_irq        @ 30
    .word   i2c_irq         @ 31
    .word   ct16b0_irq      @ 32
    .word   ct16b1_irq      @ 33
    .word   ct32b0_irq      @ 34
    .word   ct32b1_irq      @ 35
    .word   spi0_irq        @ 36
    .word   uart_irq        @ 37
    .word   defhnd          @ 38 -+-reserved
    .word   defhnd          @ 39 -+
    .word   adc_irq         @ 40
    .word   wdt_irq         @ 41
    .word   bod_irq         @ 42 brownout detect
    .word   defhnd          @ 43 reserved
    .word   pio3_irq        @ 44 port3 GPIO
    .word   pio2_irq        @ 45 port2 GPIO
    .word   pio1_irq        @ 46 port1 GPIO
    .word   pio0_irq        @ 47 port0 GPIO

# ---------------------------------------------------------------------------
    .weak nmi               @ override as desired
    .type nmi, function     @
nmi:                        @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak hflt              @ override as desired
    .type hflt, function    @
hflt:                       @ fall thourgh to defhnd

# ---------------------------------------------------------------------------
    .weak svccall           @ override as desired
    .type svccall, function @
svccall:                    @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak pendsv            @ override as desired
    .type pendsv, function  @
pendsv:                     @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak systick           @ override as desired
    .type systick, function @
systick:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu0_irq           @ override as desired
    .type wu0_irq, function @
wu0_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu1_irq           @ override as desired
    .type wu1_irq, function @
wu1_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu2_irq           @ override as desired
    .type wu2_irq, function @
wu2_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu3_irq           @ override as desired
    .type wu3_irq, function @
wu3_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu4_irq           @ override as desired
    .type wu4_irq, function @
wu4_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu5_irq           @ override as desired
    .type wu5_irq, function @
wu5_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu6_irq           @ override as desired
    .type wu6_irq, function @
wu6_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu7_irq           @ override as desired
    .type wu7_irq, function @
wu7_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu8_irq           @ override as desired
    .type wu8_irq, function @
wu8_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu9_irq           @ override as desired
    .type wu9_irq, function @
wu9_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu10_irq          @ override as desired
    .type wu10_irq, function @
wu10_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu11_irq          @ override as desired
    .type wu11_irq, function    @
wu11_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wu12_irq          @ override as desired
    .type wu12_irq, function    @
wu12_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak can_irq           @ override as desired
    .type can_irq, function     @
can_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak spi1_irq          @ override as desired
    .type spi1_irq, function    @
spi1_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak i2c_irq           @ override as desired
    .type i2c_irq, function     @
i2c_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak ct16b0_irq        @ override as desired
    .type ct16b0_irq, function  @
ct16b0_irq:             @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak ct16b1_irq        @ override as desired
    .type ct16b1_irq, function  @
ct16b1_irq:             @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak ct32b0_irq        @ override as desired
    .type ct32b0_irq, function  @
ct32b0_irq:             @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak ct32b1_irq        @ override as desired
    .type ct32b1_irq, function  @
ct32b1_irq:             @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak spi0_irq          @ override as desired
    .type spi0_irq, function    @
spi0_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak uart_irq          @ override as desired
    .type uart_irq, function    @
uart_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak adc_irq           @ override as desired
    .type adc_irq, function     @
adc_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak wdt_irq           @ override as desired
    .type wdt_irq, function     @
wdt_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak bod_irq           @ override as desired
    .type bod_irq, function     @
bod_irq:                @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak pio3_irq          @ override as desired
    .type pio3_irq, function    @
pio3_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak pio2_irq          @ override as desired
    .type pio2_irq, function    @
pio2_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak pio1_irq          @ override as desired
    .type pio1_irq, function    @
pio1_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .weak pio0_irq          @ override as desired
    .type pio0_irq, function    @
pio0_irq:               @ fall through to defhnd

# ---------------------------------------------------------------------------
    .type defhnd, function
defhnd: bkpt    #0          @ default handler