onerror {exit -code 1}
vlib work
vcom -work work OneBitALU.vho
vcom -work work OneBitALU.vwf.vht
vsim -novopt -c -t 1ps -sdfmax OneBitALU_vhd_vec_tst/i1=OneBitALU_vhd.sdo -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.OneBitALU_vhd_vec_tst
vcd file -direction OneBitALU.msim.vcd
vcd add -internal OneBitALU_vhd_vec_tst/*
vcd add -internal OneBitALU_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

