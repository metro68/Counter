// simple counter for X5
module counter(
input logic clk, reset,
output logic [3:0] value);

always_ff @(negedge clk, negedge reset)
  if (~reset)
    value <= 0;
  else
    value <= value + 1;
endmodule
