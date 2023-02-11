/**
  @brief An asynchronous mux/decoder

  @input sel   input select
  @input cs    chip select

  @input alpha alpha input
  @input beta  beta input
  @input gamma gamma input

  @output out output
*/
module Exercise4 (
    input [1:0] sel,
    input cs,

    input [7:0] alpha,
    input [7:0] beta,
    input [7:0] gamma,

    output logic [7:0] out
);
  always_comb begin
    if (!cs) out = 0;
    else
      case (sel)
        0: out = alpha;
        1: out = beta;
        2: out = gamma;
        default: out = alpha & (beta | gamma);
      endcase
  end
endmodule

//tb
//incldue namespace std
..


int orand(uint8_t alpha, uint8_t beta, uint8_t gamma){
  uint16_t result;
  result = alpha | (beta & gamma);
  retuen result;
}
  
int main(){
uint16_t expectedvalue;
  
  Exercise3 model;
  for (cs = 0;cs < 2; cs = cs + 1){
    for(sel = 0; sel < 4; sel = sel + 1){
      model.alpha = 10;
      model.beta = 20;
      model.gamma = 30;
      model.eval();
    }
  }
  
  while(expected value != 0){
    if(sel = 0 && cs = 1){
      expected value = 10;
    }
    else if(sel = 1 && cs = 1){
      expected value = 20;
    }
    else if(sel = 2 && cs = 1){
      expected value = 30;
    }
    else if(sel > 2 && cs = 1){
      expected value = orand( 10, 20, 30 );
    }
    else{
      if(cs = 0){
        expected value = 0;
      }
  }
    
    if( model.out != expectedvalue ){
      return 1;
    }
    std::cout<<"expected value is : "<< expectedvalue <<std::endl;
  }
  
                             
  
