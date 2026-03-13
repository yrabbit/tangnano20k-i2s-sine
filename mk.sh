#!/bin/sh
yosys  -p "read_verilog pll.v pROM-wave-rom.v sine-lookup.v top.v i2s.v; synth_gowin -json top-synth.json -setundef"
yosys  -p "read_verilog pll.v pROM-wave-rom.v sine-lookup.v top.v i2s.v; synth_gowin -vout top-synth.vg -setundef"
nextpnr-himbaechel -v --debug --json top-synth.json --write top.json --device GW2AR-LV18QN88C8/I7 --vopt family=GW2A-18C --vopt cst=pinout.cst
gowin_pack -d GW2A-18C -o top.fs top.json

