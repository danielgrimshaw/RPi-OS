/*
 * kernel.ld
 * 
 * A linker script for generation of raspberry pi kernel images.
 * 
 * Copyright 2015  <Daniel Grimshaw>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

SECTIONS {
	/*
	 * .init section: contains the code to be run first. We allow
	 * room for the ATAGs and stack and conform to the bootloader's
	 * expectation by putting this code at 0x8000.
	 */
	.init 0x8000 : {
		*(.init)
	}
	
	/* 
	 * Next we put the rest of the code.
	 */
	.text : {
		*(.text)
	}
	
	/* 
	 * Next we put the data.
	 */
	.data : {
		*(.data)
	}

	/*
	 * Finally comes everything else. Put all other sections into
	 * this section, which will be discarded by default.
	 */
	/DISCARD/ : {
		*(*)
	}
}
