#include <iostream>
#include <cstdint>
#include <stdlib.h>
#include "VExercise1.h"

int main(){

VExercise1 model;
bool verify = false;
model.op = 0;
model.a  = 0;
model.b  = 0;
				 
for (model.op = 0; model.op < 4; model.op++) {
	for (model.a = 0; model.a < 256; model.a++) {
		for (model.b = 0; model.b < 256; model.b++) {
			model.eval();
			if ((model.op == 0) && ((model.a ^ model.b) != model.out)) {
				verify = true;
			}
			
			if ((model.op == 1) && ((model.a << model.b) != model.out)) {
				verify = true;
			}
			
			if ((model.op == 2) && ((model.b == 0) ? (0) : (model.a % model.b)) != model.out) {
				verify = true;
			}
			
			if ((model.op == 3) && (~(model.a & model.b) != model.out)) {
				verify = true;
			}
		}
	}
}
  
if (verify) {
	std::cout << "Failed!" << std::endl;
	return 1;
}

std::cout << "Success!" << std::endl;
return 0;
}
