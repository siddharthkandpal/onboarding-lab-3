/**
  @brief A simple ALU-like module

  @input op   opcode for the operation to perform
  @input a    input to calculation
  @input b    input to calulation
  @output out result of calculation
*/
module Exercise1 (
    input [1:0] op,
    input [7:0] a,
    input [7:0] b,
    output logic [7:0] out
);
  always_comb
    case (op)
      0: out = a ^ b;
      1: out = a << b;
      2: out = a % b;
      3: out = ~(a & b);
    endcase
endmodule


`timescale 1 ns/10 ps

module Exercise1_tb;
  reg [1:0] op,
  reg [7:0] a,b,out;
  
  
  localparam duration = 10;
  Exercise1 UUT ( .op(op), .a(a), .b(b), .out(out));
  initial 
    begin
      
      $monitor(a,b,out);
      
     for (op = 0; op < 5; op = op + 1) begin
          for (a = 0; a < 256; a = a + 1) begin
            for ( b = 0; b < 256; b = b + 1) begin // is there any better way around this? Since i think it would give me an error for bit overflow.
          #duration
        end
      end
    end
  end
endmodule

    

      
          
      
      
      
      







  
