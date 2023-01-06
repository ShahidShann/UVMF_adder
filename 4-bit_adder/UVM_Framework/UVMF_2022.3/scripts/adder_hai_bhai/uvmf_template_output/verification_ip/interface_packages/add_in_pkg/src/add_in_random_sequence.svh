//----------------------------------------------------------------------
// Created with uvmf_gen version 2022.3
//----------------------------------------------------------------------
// pragma uvmf custom header begin
// pragma uvmf custom header end
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//     
// DESCRIPTION: 
// This sequences randomizes the add_in transaction and sends it 
// to the UVM driver.
//
// This sequence constructs and randomizes a add_in_transaction.
// 
//----------------------------------------------------------------------
//----------------------------------------------------------------------
//
class add_in_random_sequence #(
      int ADD_WIDTH = 4
      )
  extends add_in_sequence_base #(
      .ADD_WIDTH(ADD_WIDTH)
      );

  `uvm_object_param_utils( add_in_random_sequence #(
                           ADD_WIDTH
                           ))

  // pragma uvmf custom class_item_additional begin
  // pragma uvmf custom class_item_additional end
  
  //*****************************************************************
  function new(string name = "");
    super.new(name);
  endfunction: new

  // ****************************************************************************
  // TASK : body()
  // This task is automatically executed when this sequence is started using the 
  // start(sequencerHandle) task.
  //
  task body();
  
      // Construct the transaction
      req=add_in_transaction#(
                .ADD_WIDTH(ADD_WIDTH)
                )::type_id::create("req");
      start_item(req);
      // Randomize the transaction
      if(!req.randomize()) `uvm_fatal("SEQ", "add_in_random_sequence::body()-add_in_transaction randomization failed")
      // Send the transaction to the add_in_driver_bfm via the sequencer and add_in_driver.
      finish_item(req);
      `uvm_info("SEQ", {"Response:",req.convert2string()},UVM_MEDIUM)

  endtask

endclass: add_in_random_sequence

// pragma uvmf custom external begin
// pragma uvmf custom external end

