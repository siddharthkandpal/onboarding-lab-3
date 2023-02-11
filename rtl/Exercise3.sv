/**
  @brief A module of mysterious purpose

  @input clk    clock
  @input nReset active-low reset
  @input a      an input
  @input b      an input
  @input c      an input

  @output out   output
*/
module Exercise3 (
    input clk,
    input reset,
    input [3:0] a,
    input [15:0] b,
    input [15:0] c,
    output [15:0] out
);
  logic [7:0] a_in;
  logic [7:0] b_in;
  logic [2:0] count;

  Mystery1 alpha (
      .a(a[1:0]),
      .b(b[7:0]),
      .c(c[7:0]),
      .d(a_in)
  );
  Mystery1 beta (
      .a(a[3:2]),
      .b(b[15:8]),
      .c(c[15:8]),
      .d(b_in)
  );

  Mystery2 gamma (.*);
endmodule

//tb

//include namespace std

int main(){
  uint16_t expectedvalue;
  //  uint16_t
  //  uint16_t
  
  
  Exercise3 model;
 for(reset = 0; reset < 2; reset++){
  for(clk = 0; clk < 2: clk++){
    for(a = 0; a < 5; a++){
     
    model.b = 0x0101010110101010;
    model.c = 0x1111111111111111;
    model.count = a;
    model.eval();
    }
  }
 }
  
  
  if(clk != 0 && a = 0){
      expectedvalue = 0x00010111;
    }
  else if(clk != 0 && a = 1){
      expectedvalue = 0x01111010;
    }
  else if(clk != 0 && a = 2){
     expectedvalue = 0x01010101;
   }
   else{
     expected value = 0x11111111;
   }

  
  while(clk = 0){
    if(reset = 1){
    expectedvalue =  ( b_in << 8 | a_in );
  }
    else if(reset = 0 && count = 0 ){
      expectedvalue = ( a_in << 8 | (out & 0xFF) );
    }
    else if(reset = 0 && count = 1){
      expectedvalue = ( d & 0xFF | b_in );
    }
    else if(reset = 0 && count = 2 ){
      expectedvalue = ( d & 0xFF | d & 0xFF00 );
    }
    else if(reset = 0 && count = 3){
      expectedvalue = ( d & 0x000F | d & 0x00F0 | d & 0x0F00 | d & 0xF000 );
    }
    else{
      expectedvalue = ( 0 | 0x1 & (^(d)) );
    }
  }
  
  if( model.out != expected value){
    return 1;
  }
}

 
