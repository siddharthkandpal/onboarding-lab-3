include <cstdint>
#include <VExercise4.h>
#include <stdlib.h>
#include <iostream>

int main(){
VExercise4 model;
int k;
model.alpha = 1;
model.beta = 2;
model.gamma = 3;
bool verify = true;
model.cs = 0;
for(model.sel = 0; model.sel < 4; model.sel++){
model.eval();
if(model.out != 0)
{
verify = false;
}
}

model.cs = 1;
for(k = 0; k < 4; k++){
model.eval();
switch(k) {
  case 0: verify = verify && (model.out == 1);
  break;
  case 1: verify = verify && (model.out == 2);
  break;
  case 2: verify = verify && (model.out == 3);
  break;
  case 3: verify = verify && (model.out == 1 & (2 | 3));
  break;
}
return 0;
}
}
