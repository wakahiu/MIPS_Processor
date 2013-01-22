start InteruptTestbench
file copy -force ../../../software/APP/app.mif bios_mem.mif
file copy -force ../../../software/ISR/ISR.mif isr_mem.mif
add wave InteruptTestbench/*
add wave InteruptTestbench/DUT/DataPath/*
add wave InteruptTestbench/DUT/DataPath/COP0150/*
run 1000us
