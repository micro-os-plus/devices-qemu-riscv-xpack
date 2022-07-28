/*
 * This file is part of the µOS++ distribution.
 *   (https://github.com/micro-os-plus/)
 * Copyright (c) 2022 Liviu Ionescu.
 *
 * Permission to use, copy, modify, and/or distribute this software
 * for any purpose is hereby granted, under the terms of the MIT license.
 *
 * If a copy of the license was not distributed with this file, it can
 * be obtained from https://opensource.org/licenses/MIT/.
 */

/*
 * Memory Spaces Definitions for the QEMU virt board with RV64.
 * - https://www.qemu.org/docs/master/system/riscv/virt.html
 * The sizes are not documented, but experimentally RAM ends at 0x87FFFFFF.
 *
 *   RAM.ORIGIN: starting address of RAM bank 0
 *   RAM.LENGTH: length of RAM bank 0
 *
 * The values below can be addressed in further linker scripts
 * using functions like 'ORIGIN(RAM)' or 'LENGTH(RAM)'.
 */

MEMORY
{
  FLASH (xr) : ORIGIN = 0x20000000, LENGTH = 0x04000000 /* 64 MiB */
  RAM (xrw) : ORIGIN = 0x80000000, LENGTH = 0x08000000 /* 128 MiB */
}
