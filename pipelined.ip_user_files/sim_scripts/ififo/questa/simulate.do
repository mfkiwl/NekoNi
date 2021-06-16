onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ififo_opt

do {wave.do}

view wave
view structure
view signals

do {ififo.udo}

run -all

quit -force
