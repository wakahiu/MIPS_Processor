start bios150v3Testbench
file copy -force ../../../software/bios150v3/bios150v3.mif imem_blk_ram.mif
file copy -force ../../../software/bios150v3/bios150v3.mif dmem_blk_ram.mif
add wave bios150v3Testbench/*
add wave bios150v3Testbench/DUT/*
add wave bios150v3Testbench/DUT/DataPath/*

run 1000us
