onerror {exit -code 1}
vlib work
vcom -work work status_reg.vho
vcom -work work Waveform.vwf.vht
vsim -novopt -c -t 1ps -sdfmax status_reg_vhd_vec_tst/i1=status_reg_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.status_reg_vhd_vec_tst
vcd file -direction status_reg.msim.vcd
vcd add -internal status_reg_vhd_vec_tst/*
vcd add -internal status_reg_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f


