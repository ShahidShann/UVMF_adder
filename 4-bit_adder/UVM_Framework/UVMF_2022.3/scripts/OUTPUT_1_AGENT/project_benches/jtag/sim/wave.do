 

onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -noupdate -divider jtag_agent 
add wave -noupdate /uvm_root/uvm_test_top/environment/jtag_agent/jtag_agent_monitor/txn_stream
add wave -noupdate -group jtag_agent_bus /hdl_top/jtag_agent_bus/*

TreeUpdate [SetDefaultTree]
quietly wave cursor active 0
configure wave -namecolwidth 472
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {27 ns} {168 ns}

