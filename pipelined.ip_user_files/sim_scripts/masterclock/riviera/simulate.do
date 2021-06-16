onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+masterclock -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.masterclock xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {masterclock.udo}

run -all

endsim

quit -force
