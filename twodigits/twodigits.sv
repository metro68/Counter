//Display on 7 segment
module sevenseg (output logic [6:0] seg, input logic [3:0] value);

always_comb
unique casez (value)
4'b0000 : seg = 7'b1000000;
4'b0001 : seg = 7'b1111001;
4'b0010 : seg = 7'b0100100;
4'b0011 : seg = 7'b0110000;
4'b0100 : seg = 7'b0011001;
4'b0101 : seg = 7'b0010010;
4'b0110 : seg = 7'b1000010;
4'b0111 : seg = 7'b1111000;
4'b1000 : seg = 7'b0000000;
4'b1001 : seg = 7'b0010000;
default : seg = 7'b1111111;
endcase
endmodule

//Divide the input with 10
module twodigits (input logic [3:0] SW,
output logic [6:0] HEX0,
output logic [6:0] HEX1);
reg [3:0] tensbcd;
reg [3:0] onesbcd;
sevenseg s0 (.seg(HEX0), .value(onesbcd));
sevenseg s1 (.seg(HEX1), .value(tensbcd));

always@ (SW)
begin
onesbcd = SW % 10;
tensbcd = SW / 10;
end
endmodule