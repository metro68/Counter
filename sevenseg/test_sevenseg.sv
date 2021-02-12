/////////////////////////////////////////////////////////////////////
// Design unit: test_sevenseg
//            :
// File name  : test_sevenseg.sv
//            :
// Description: Testbench for Seven segment decoder
//            : Active Low outputs
//            :
// Limitations: None
//            : 
// System     : SystemVerilog IEEE 1800-2005
//            :
// Author     : Mark Zwolinski
//            : School of Electronics and Computer Science
//            : University of Southampton
//            : Southampton SO17 1BJ, UK
//            : mz@ecs.soton.ac.uk
//
// Revision   : Version 1.0 10/08/17
/////////////////////////////////////////////////////////////////////

module test_sevenseg;

logic [6:0] data; 
logic [3:0] address;

sevenseg s0 (.*);

initial
  begin
  address = 'X;
  #10ns address = 0;
  #10ns address = 1;
  #10ns address = 2;
  #10ns address = 4;
  #10ns address = 8;
  #10ns address = 10;
  #10ns address = 15;
  end

endmodule