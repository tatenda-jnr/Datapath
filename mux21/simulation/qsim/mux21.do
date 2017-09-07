onerror {exit -code 1}
vlib work
vcom -work work mux21.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax mux21_vhd_vec_tst/i1=mux21_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.mux21_vhd_vec_tst
vcd file -direction mux21.msim.vcd
vcd add -internal mux21_vhd_vec_tst/*
vcd add -internal mux21_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
