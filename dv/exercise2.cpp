#include <VExercise2.h>

int main() {
  uint8_t expectedvalue;
  int reset, init, clk, out;
  VExercise2 model;
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

