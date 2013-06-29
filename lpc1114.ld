MEMORY
{
  flash (rx) : org = 0x00000000, len = 32k
  ram  (rwx) : org = 0x10000000, len =  8k
}

SECTIONS
{
  .vectors :
  {
    KEEP(*(.vectors*))
    /* wasted space between crp & vectors */
    . = ORIGIN(flash) + 0x2fc;
    KEEP(*(.crp*))
 /*   LONG(crp_value) */
  } >flash =0xFF

  .text :
  {
    *(.text*)
  } >flash =0xFF

  .const :
  {
    KEEP(*(.const*))
    startof_datasrc = ALIGN(4);
  } >flash =0xff

  .data : AT(startof_datasrc)
  {
    startof_data = ALIGN(4);
    *(.data*)
    endof_data = ALIGN(4);
  } >ram

  .bss :
  {
    startof_bss = ALIGN(4);
    *(.bss*)
    endof_bss = ALIGN(4);
  } >ram

  .noinit :
  {
    *(.noinit*)
  } >ram

}

sizeof_bss = endof_bss - startof_bss;
sizeof_stack = topof_stack - bottomof_stack;
sizeof_data = endof_data - startof_data;
endof_datasrc = startof_datasrc + sizeof_data;
startof_ram = ORIGIN(ram);
endof_ram = startof_ram + LENGTH(ram);
sizeof_ram = endof_ram - startof_ram;
bottomof_stack = endof_bss;
topof_stack = endof_ram;