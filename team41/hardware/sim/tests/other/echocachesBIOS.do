start EchoTestbenchCaches
file copy -force ../../../software/mmult/mmult.mif bios_mem.mif
file copy -force ../../../software/bios150v3/zero.mif imem_blk_ram.mif
file copy -force ../../../software/mmult/mmult.mif dmem_blk_ram.mif
add wave EchoTestbenchCaches/*
add wave EchoTestbenchCaches/mem_arch/*
add wave EchoTestbenchCaches/mem_arch/dcache/*
add wave EchoTestbenchCaches/mem_arch/icache/*
add wave EchoTestbenchCaches/DUT/DataPath/*
add wave EchoTestbenchCaches/DUT/Control/*
add wave EchoTestbenchCaches/DUT/DataPath/UART/*
add wave EchoTestbenchCaches/DUT/DataPath/RegisterFile/*
run 1000us
