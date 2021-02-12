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
// Revision   : Version 1.1 11/11/20
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
  
always @(data)
  unique case (data)
    7'b1000000: $write("0\n");
    7'b1111001: $write("1\n");
    7'b0100100: $write("2\n");
    7'b0110000: $write("3\n");
    7'b0011001: $write("4\n");
    7'b0010010: $write("5\n");
    7'b0000010: $write("6\n");
    7'b1111000: $write("7\n");
    7'b0000000: $write("8\n");
    7'b0010000: $write("9\n");
    7'b0001000: $write("A\n");
    7'b0000011: $write("b\n");
    7'b1000110: $write("C\n");
    7'b0100001: $write("d\n");
    7'b0000110: $write("E\n");
    7'b0001110: $write("F\n");
    default: $write("Error\n");
  endcase  
  

endmodule