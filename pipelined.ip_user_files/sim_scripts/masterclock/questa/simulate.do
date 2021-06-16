onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib masterclock_opt

do {wave.do}

view wave
view structure
view signals

do {masterclock.udo}

run -all

quit -force
