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
  
  Exercise2 model;
  model.clk = 0;
  model.reset = 1;
  model.init = 65536;
  model.eval();
  
  int fileop;
  file op = out;
  while(fileop != 0){
    std::cout<<"incorrect";
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

