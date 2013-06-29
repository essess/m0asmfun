# SYSCON
#   base+offsets
    .equ    SYSCON_BASE,        0x40048000
    .equ    SYSMEMREMAP_OFFSET, 0x0000      @ rw
    .equ    PRESETCTRL_OFFSET,  0x0004      @ rw
    .equ    SYSPLLCTRL_OFFSET,  0x0008      @ rw
    .equ    SYSPLLSTAT_OFFSET,  0x000C      @ r
    .equ    SYSOSCCTRL_OFFSET,  0x0020      @ rw
    .equ    WDTOSCCTRL_OFFSET,  0x0024      @ rw
    .equ    IRCCTRL_OFFSET,     0x0028      @ rw
    .equ    SYSRSTSTAT_OFFSET,  0x0030      @ r
    .equ    SYSPLLCLKSEL_OFFSET,    0x0040      @ rw
    .equ    SYSPLLCLKUEN_OFFSET,    0x0044      @ rw
    .equ    MAINCLKSEL_OFFSET,  0x0070      @ rw
    .equ    MAINCLKUEN_OFFSET,  0x0074      @ rw
    .equ    SYSAHBCLKDIV_OFFSET,    0x0078      @ rw
    .equ    SYSAHBCLKCTRL_OFFSET,   0x0080      @ rw
    .equ    SSP0CLKDIV_OFFSET,  0x0094      @ rw
    .equ    UARTCLKDIV_OFFSET,  0x0098      @ rw
    .equ    SSP1CLKDIV_OFFSET,  0x009C      @ rw
    .equ    WDTCLKSEL_OFFSET,   0x00D0      @ rw
    .equ    WDTCLKUEN_OFFSET,   0x00D4      @ rw
    .equ    WDTVLKDIV_OFFSET,   0x00D8      @ rw
    .equ    CLKOUTCLKSEL_OFFSET,    0x00E0      @ rw
    .equ    CLKOUTUEN_OFFSET,   0x00E4      @ rw
    .equ    CLKOUTCLKDIV_OFFSET,    0x00E8      @ rw
    .equ    PIOPORCAP0_OFFSET,  0x0100      @ r
    .equ    PIOPORCAP1_OFFSET,  0x0104      @ r
    .equ    BODCTRL_OFFSET,     0x0150      @ rw
    .equ    SYSTCKCAL_OFFSET,   0x0154      @ rw
    .equ    STARTAPRP0_OFFSET,  0x0200      @ rw
    .equ    STARTERP0_OFFSET,   0x0204      @ rw
    .equ    STARTRSRP0CLR_OFFSET,   0x0208      @ w
    .equ    STARTSRP0_OFFSET,   0x020C      @ r
    .equ    PDSLEEPCFG_OFFSET,  0x0230      @ rw
    .equ    PDAWAKECFG_OFFSET,  0x0234      @ rw
    .equ    PDRUNCFG_OFFSET,    0x0238      @ rw
    .equ    DEVICE_ID_OFFSET,   0x03F4      @ r
#   absolutes
    .equ    SYSMEMREMAP,    (SYSCON_BASE+SYSMEMREMAP_OFFSET)
    .equ    PRESETCTRL, (SYSCON_BASE+PRESETCTRL_OFFSET)
    .equ    SYSPLLCTRL, (SYSCON_BASE+SYSPLLCTRL_OFFSET)
    .equ    SYSPLLSTAT, (SYSCON_BASE+SYSPLLSTAT_OFFSET)
    .equ    SYSOSCCTRL, (SYSCON_BASE+SYSOSCCTRL_OFFSET)
    .equ    WDTOSCCTRL, (SYSCON_BASE+WDTOSCCTRL_OFFSET)
    .equ    IRCCTRL,    (SYSCON_BASE+IRCCTRL_OFFSET)
    .equ    SYSRSTSTAT, (SYSCON_BASE+SYSRSTSTAT_OFFSET)
    .equ    SYSPLLCLKSEL,   (SYSCON_BASE+SYSPLLCLKSEL_OFFSET)
    .equ    SYSPLLCLKUEN,   (SYSCON_BASE+SYSPLLCLKUEN_OFFSET)
    .equ    MAINCLKSEL, (SYSCON_BASE+MAINCLKSEL_OFFSET)
    .equ    MAINCLKUEN, (SYSCON_BASE+MAINCLKUEN_OFFSET)
    .equ    SYSAHBCLKDIV,   (SYSCON_BASE+SYSAHBCLKDIV_OFFSET)
    .equ    SYSAHBCLKCTRL,  (SYSCON_BASE+SYSAHBCLKCTRL_OFFSET)
    .equ    SSP0CLKDIV, (SYSCON_BASE+SSP0CLKDIV_OFFSET)
    .equ    UARTCLKDIV, (SYSCON_BASE+UARTCLKDIV_OFFSET)
    .equ    SSP1CLKDIV, (SYSCON_BASE+SSP1CLKDIV_OFFSET)
    .equ    WDTCLKSEL,  (SYSCON_BASE+WDTCLKSEL_OFFSET)
    .equ    WDTCLKUEN,  (SYSCON_BASE+WDTCLKUEN_OFFSET)
    .equ    WDTVLKDIV,  (SYSCON_BASE+WDTVLKDIV_OFFSET)
    .equ    CLKOUTCLKSEL,   (SYSCON_BASE+CLKOUTCLKSEL_OFFSET)
    .equ    CLKOUTUEN,  (SYSCON_BASE+CLKOUTUEN_OFFSET)
    .equ    CLKOUTCLKDIV,   (SYSCON_BASE+CLKOUTCLKDIV_OFFSET)
    .equ    PIOPORCAP0, (SYSCON_BASE+PIOPORCAP0_OFFSET)
    .equ    PIOPORCAP1, (SYSCON_BASE+PIOPORCAP1_OFFSET)
    .equ    BODCTRL,    (SYSCON_BASE+BODCTRL_OFFSET)
    .equ    SYSTCKCAL,  (SYSCON_BASE+SYSTCKCAL_OFFSET)
    .equ    STARTAPRP0, (SYSCON_BASE+STARTAPRP0_OFFSET)
    .equ    STARTERP0,  (SYSCON_BASE+STARTERP0_OFFSET)
    .equ    STARTRSRP0CLR,  (SYSCON_BASE+STARTRSRP0CLR_OFFSET)
    .equ    STARTSRP0,  (SYSCON_BASE+STARTSRP0_OFFSET)
    .equ    PDSLEEPCFG, (SYSCON_BASE+PDSLEEPCFG_OFFSET)
    .equ    PDAWAKECFG, (SYSCON_BASE+PDAWAKECFG_OFFSET)
    .equ    PDRUNCFG,   (SYSCON_BASE+PDRUNCFG_OFFSET)
    .equ    DEVICE_ID,  (SYSCON_BASE+DEVICE_ID_OFFSET)

# IOCON
#   base+offsets
    .equ    IOCON_BASE,     0x40044000
    .equ    PIO2.6_OFFSET,      0x0000      @ rw
    @ ...
    .equ    PIO0.1_OFFSET,      0x0010      @ rw
#   absolutes
    .equ    PIO2.6,     (IOCON_BASE+PIO2.6_OFFSET)
    @ ...
    .equ    PIO0.1,     (IOCON_BASE+PIO0.1_OFFSET)