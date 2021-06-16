onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib iram_opt

do {wave.do}

view wave
view structure
view signals

do {iram.udo}

run -all

quit -force
