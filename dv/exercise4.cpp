#include <VExercise4.h>
int main() {
   uint16_t expectedvalue;
  VExercise4 model; 
  int cs, sel,alpha,beta,gamma;
  for (cs = 0;cs < 2; cs = cs + 1){
    for(sel = 0; sel < 4; sel = sel + 1){
      model.alpha = 10;
      model.beta = 20;
      model.gamma = 30;
      model.eval();
    }
  }
  
  if(cs = 0){
      expectedvalue = 0;
    }
  while(expectedvalue != 0){
    if(sel == 0 && cs == 1){
      expectedvalue = 10;
    }
    else if(sel == 1 && cs ==1){
      expectedvalue = 20;
    }
    else if(sel == 2 && cs == 1){
      expectedvalue = 30;
    }
    else{
      expectedvalue = (10 | ( 20 & 30 ));
    }
  }
    
  if (model.out != expectedvalue){
    return 1;
 }
}
