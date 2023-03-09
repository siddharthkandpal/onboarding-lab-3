#include <VExercise3.h>

int main() {
  uint16_t expectedvalue;
  int reset,clk,a,count,b,c,d, a_in, b_in;
  VExercise3 model;
  for(reset = 0; reset < 2; reset++){
  for(clk = 0; clk < 2; clk++){
    for(a = 0; a < 5; a++){
    count = a; 
    model.b = 0x0101010110101010;
    model.c = 0x1111111111111111;
    model.eval();
    }
  }
 }
  
  
  if(clk != 0 && a == 0){
      expectedvalue = 0x00010111;
    }
  else if(clk != 0 && a == 1){
      expectedvalue = 0x01111010;
    }
  else if(clk != 0 && a == 2){
     expectedvalue = 0x01010101;
   }
   else{
     expected value == 0x11111111;
   }

  
  while(clk = 0){
    if(reset = 1){
    expectedvalue =  ( b_in << 8 | a_in );
  }
    else if(reset == 0 && count == 0 ){
      expectedvalue = ( a_in << 8 | (out & 0xFF) );
    }
    else if(reset == 0 && count == 1){
      expectedvalue = ( d & 0xFF | b_in );
    }
    else if(reset ==  0 && count == 2 ){
      expectedvalue = ( d & 0xFF | d & 0xFF00 );
    }
    else if(reset == 0 && count == 3){
      expectedvalue = ( d & 0x000F | d & 0x00F0 | d & 0x0F00 | d & 0xF000 );
    }
    else{
      expectedvalue = ( 0 | 0x1 & (^(d)) );
    }
  }
  
  if( model.out != expectedvalue){
    return 1;
  }
}
