onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uartfifo_opt

do {wave.do}

view wave
view structure
view signals

do {uartfifo.udo}

run -all

quit -force
