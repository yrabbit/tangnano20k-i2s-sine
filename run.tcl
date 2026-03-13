            add_file -type netlist top-synth.vg
			add_file -type cst pinout-gw.cst
            #add_file -type verilog top.v
            #add_file -type verilog pROM-wave-rom.v
            #add_file -type verilog pll.v
            #add_file -type verilog sine-lookup.v
            set_device -name GW2AR-18C GW2AR-LV18QN88C8/I7
            set_option  -gen_posp 1 -gen_io_cst 1 -gen_ibis 1 -ireg_in_iob 0 -oreg_in_iob 0 -ioreg_in_iob 0 -timing_driven 0 -cst_warn_to_error 0 
			set_option  -use_jtag_as_gpio 0 
			set_option  -use_sspi_as_gpio 1 
			set_option  -use_mspi_as_gpio 1 
			set_option  -use_ready_as_gpio 1 
			set_option  -use_done_as_gpio 1 
			set_option  -use_reconfign_as_gpio 0 -use_mode_as_gpio 0 -use_i2c_as_gpio 1 -bit_crc_check 1 -bit_compress 0 -bit_encrypt 0 -bit_security 1 -bit_incl_bsram_init 1 -loading_rate 250/100 -spi_flash_addr 0x00FFF000 -bit_format txt -bg_programming off -secure_mode 0
            run pnr
            
