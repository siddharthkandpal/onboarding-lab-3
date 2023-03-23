#include <iostream>
#include "VExercise2.h"
#include <stdlib.h>
#include <iostream>
uint16_t lfsr(uint16_t lfsr_bits) {
  //calculating the output of lfsr
  return (lfsr_bits << 1) + (((lfsr_bits >> 10)  ^ (lfsr_bits >> 8)  ^ (lfsr_bits >> 3) ^ (lfsr_bits >> 1)) & 1);
}

//testing the module for reset = 1 and clock = 0

bool input_test(uint16_t ) {
uint16_t test_input;
uint16_t temp;
int j;

VExercise2 model;
model.clk = 1;
model.eval();
model.clk = 0;
model.reset = 1;
model.init = test_input;
model.eval();


// initializing

temp = !test_input;

for(j = 0; j < 500; j++){
    model.clk = 0;
    model.reset = 0;
    model.eval();
    model.clk = 1;
    model.reset = 0;
    model.eval();
    if(model.out != lfsr(temp))
    return true;
    temp = model.out;}
  return false;
}

int main() {
 bool failed = false;
 failed |= input_test(432);
 failed |= input_test(23);
 failed |= input_test(244);
 return (int) failed;
}
