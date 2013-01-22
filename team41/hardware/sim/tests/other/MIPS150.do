start MIPS150Testbench
file copy -force ../../../software/smallCode/smallCode.mif imem_blk_ram.mif
file copy -force ../../../software/smallCode/smallCode.mif dmem_blk_ram.mif
add wave MIPS150Testbench/*
add wave MIPS150Testbench/DUT/*
add wave MIPS150Testbench/DUT/Control/*
add wave MIPS150Testbench/DUT/DataPath/*
add wave MIPS150Testbench/DUT/DataPath/RegisterFile/*
add wave MIPS150Testbench/DUT/DataPath/RegisterFile/RF[1]/*
run 10000us
