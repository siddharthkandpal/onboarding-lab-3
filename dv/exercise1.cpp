#include <VExercise1.h>
     
int main() {
  int h,i,k,a,b,op;
  VExercise1 model;
  for(h = 0; h < 3; h = h + 1){
  for (i = 0; i < 256; i = i + 1){
    for (k = 0; k < 256; k = k + 1){
      
    model.op = h;
    model.a = i;
    model.b = k;
    model.eval();
  }
 }
  }
}
