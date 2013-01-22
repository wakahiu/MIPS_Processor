.section    .start
.global     _start

_start:
    li      $sp, 0x1000F000
    jal     main
