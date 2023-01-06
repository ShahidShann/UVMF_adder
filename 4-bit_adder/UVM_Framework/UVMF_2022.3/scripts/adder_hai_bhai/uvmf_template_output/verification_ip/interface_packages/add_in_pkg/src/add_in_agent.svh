//----------------------------------------------------------------------
// Created with uvmf_gen version 2022.3
//----------------------------------------------------------------------
// pragma uvmf custom header begin
// pragma uvmf custom header end
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//
// DESCRIPTION: Protocol specific agent class definition
//
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//
class add_in_agent #(
     int ADD_WIDTH = 4
     ) extends uvmf_parameterized_agent #(
                    .CONFIG_T(add_in_configuration #(
                              .ADD_WIDTH(ADD_WIDTH)
                              )),
                    .DRIVER_T(add_in_driver #(
                              .ADD_WIDTH(ADD_WIDTH)
                              )),
                    .MONITOR_T(add_in_monitor #(
                               .ADD_WIDTH(ADD_WIDTH)
                               )),
                    .COVERAGE_T(add_in_transaction_coverage #(
                                .ADD_WIDTH(ADD_WIDTH)
                                )),
                    .TRANS_T(add_in_transaction #(
                             .ADD_WIDTH(ADD_WIDTH)
                             ))
                    );

  `uvm_component_param_utils( add_in_agent #(
                              ADD_WIDTH
                              ))

// pragma uvmf custom class_item_additional begin
// pragma uvmf custom class_item_additional end

// ****************************************************************************
// FUNCTION : new()
// This function is the standard SystemVerilog constructor.
//
  function new( string name = "", uvm_component parent = null );
    super.new( name, parent );
  endfunction

// ****************************************************************************
  // FUNCTION: build_phase
  virtual function void build_phase(uvm_phase phase);
// pragma uvmf custom build_phase_pre_super begin
// pragma uvmf custom build_phase_pre_super end
    super.build_phase(phase);
    if (configuration.active_passive == ACTIVE) begin
      // Place sequencer handle into configuration object
      // so that it may be retrieved from configuration 
      // rather than using uvm_config_db
      configuration.sequencer = this.sequencer;
    end
  endfunction
  
endclass

// pragma uvmf custom external begin
// pragma uvmf custom external end

