/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input reset  active-high reset
  @input init   inverse of initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input reset,
    input [15:0] init,
    output logic [15:0] out
);
  always_ff @(negedge clk)
    if (reset) out <= ~init;
    else out <= {out[14:0], out[10] ^ out[8] ^ out[3] ^ out[1]};
endmodule

//approach for the testbench

int main(){
uint8_t expectedvalue;
  Exercise2 model;
  
    for(reset = 0; reset < 2; reset++){
    model.clk = 0;
    model.init = 15;
    model.eval();
    }
  
  if(reset = 1){
    expectedvalue = ~(init);
  }
  else{
    expectedvalue = ( out & 0x7FFF | ((out & 0x0600)^(out & 0x0100) ^ (out & 0x0008) ^ (out & 0x0002)));
  }
  
  if(model.out != expectedvalue){
  return 1;
  }
}



/*
module testbench;
  reg clk, reset;
  reg [15:0] init;
  logic [15:0] out;
  
  Exercise2 UUT ( .clk(clk), .reset(reset), .init(init), .out(out));
  
  initial 
    begin
      clk = 0;
      rst = 1;
       #10
      rst = 0;
    end
  always @ (negedge clk) begin
    #10 
    clk <= ~clk;
  end
endmodule
*/

