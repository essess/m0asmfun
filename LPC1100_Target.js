/******************************************************************************
  Target Script for LPC1100

  Copyright (c) 2010 Rowley Associates Limited.

  This file may be distributed under the terms of the License Agreement
  provided with this software.

  THIS FILE IS PROVIDED AS IS WITH NO WARRANTY OF ANY KIND, INCLUDING THE
  WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
 ******************************************************************************/

function Reset()
{
  if (TargetInterface.implementation != undefined && 
      TargetInterface.implementation() == "crossworks_hardware")
    {
      TargetInterface.pokeWord(0xE000EDFC, 0x00000001);
      TargetInterface.pokeWord(0xE000ED0C, 0x05FA0004);
      TargetInterface.pokeWord(0xE000EDFC, 0x01000000);
      TargetInterface.pokeWord(0xE0001020, 0x00000000);
      TargetInterface.pokeWord(0xE0001024, 0x00000000);
      TargetInterface.pokeWord(0xE0001028, 0x00000805);
      TargetInterface.pokeWord(0xE000EDF0, 0xA05F0001);
      TargetInterface.delay(100);
      TargetInterface.resetDebugInterface();
      TargetInterface.pokeWord(0xE000EDF0, 0xA05F0003);
      TargetInterface.waitForDebugState(100);
      TargetInterface.pokeWord(0xE0001028, 0x00000000);
    }
  else
    TargetInterface.stopAndReset(100);
}

function SRAMReset()
{
  Reset();
  TargetInterface.pokeWord(0x40048000, 1); /* Remap interrupt vectors to SRAM */
}

function FLASHReset()
{
  Reset();
  TargetInterface.pokeWord(0x40048000, 2); /* Disable interrupt vector remapping */
}

