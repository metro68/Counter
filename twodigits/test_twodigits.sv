module test_twodigits;

logic [6:0] HEX0;
logic [6:0] HEX1;
logic [3:0] SW;
integer i;

//Instantiate the Unit Under Test (UUT)
twodigits uut(
.HEX0(HEX0),
.HEX1(HEX1),
.SW(SW)
);

//Apply inputs
initial begin
for (i=0;i<16;i=i+1) //run loop for 0 to 15.
begin SW = i;
#10;//wait for 10ns
end
end

endmodule