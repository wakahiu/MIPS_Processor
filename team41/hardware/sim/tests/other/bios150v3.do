start bios150v3Testbench
file copy -force ../../../software/example/example.mif bios_mem.mif
file copy -force ../../../software/example/example.mif isr_mem.mif
add wave bios150v3Testbench/*
add wave bios150v3Testbench/DUT/*
add wave bios150v3Testbench/DUT/DataPath/*

run 1us
