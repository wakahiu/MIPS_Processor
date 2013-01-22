.section    .start
.global     _start

_start:

li		$s0,	480000
li		$s1,	480000
li		$t2,	800
li		$t3,	600
li		$t0,	0
li		$t1,	0

j		_STOREbegin

_STOREbegin:
lui		$v1,	0x1080	
lui		$v0,	0x1040		

_store_1:
blez	$s0,		_endStore_1
addiu	$s0,	$s0,	-1		
sw		$0,		0($v1)
addiu	$t0,	$t0,	1
bne		$t0,	$t2,	skip_wrap_1
li		$t0,	0
addiu	$t1,	$t1,	1
skip_wrap_1:
sll		$t0,	$t0,	2
sll		$t1,	$t1,	12
or		$v1,	$v1,	$t0
or		$v1,	$v1,	$t1
j		_store_1


_endStore_1:

_store_2:
blez	$s1,		_endStore_2
addiu	$s1,	$s1,	-1		
sw		$0,		0($v0)
addiu	$t0,	$t0,	1
bne		$t0,	$t2,	skip_wrap_2
li		$t0,	0
addiu	$t1,	$t1,	1

skip_wrap_2:
sll		$t0,	$t0,	2
sll		$t1,	$t1,	12
or		$v0,	$v0,	$t0
or		$v0,	$v0,	$t1
j		_store_2

_endStore_2:
nop
