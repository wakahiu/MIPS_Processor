.section    .start
.global     _start

_start:
li      $sp,	0x10000100
li		$v0,    0x80000000
lw		$t1,    0x10($v0)		#PixelFrame

li		$t2,    0x10D00000
sw		$t2,    0x14($v0)		#GP_CODE
li		$t3,    0x10400000
sw		$t3,    0x18($v0)		#GP_FRAME
li		$t4,    0x0ff23ee
sw		$t4,    0x1c($v0)		#GP_VALID
