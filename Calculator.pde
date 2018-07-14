int button_size = 75;
int spacer = 50;
int X_calculator_layout = 25;
int Y_calculator_layout = 300;
int X_margin = 25;
int Y_margin = 50;
void setup(){
    background(255);
  fill(0);
  textSize(35);
  text("Calculator",X_margin,Y_margin);
  size(600,700);  
  
}
void draw(){
  for(int a = 0; a<3; a++){
    for(int i = 0;i<3;i++){ //0-9
      fill(50,50,50);
      rect(spacer*i+(button_size*i)+X_calculator_layout,spacer*a+(button_size*a)+Y_calculator_layout,button_size,button_size,15);
      if( mouseX > spacer*i+(button_size*i)+X_calculator_layout && mouseX < (spacer*i+(button_size*i)+X_calculator_layout)+button_size
        && mouseY > spacer*a+(button_size*a)+Y_calculator_layout && mouseY <(spacer*a+(button_size*a)+Y_calculator_layout)+button_size){
          fill(200);
          rect(spacer*i+(button_size*i)+X_calculator_layout,spacer*a+(button_size*a)+Y_calculator_layout,button_size,button_size,15);
        println(1+(a*2+i)+a);
        }
  
      
    }
     //operators
    fill(50,50,50);
    rect(spacer+(button_size)+X_calculator_layout*11,spacer*a+(button_size*a)+Y_calculator_layout,button_size*2,button_size,15);
    if( mouseX > spacer+(button_size)+X_calculator_layout*11 && mouseX < (spacer+(button_size)+X_calculator_layout*11)+button_size*2
        && mouseY > spacer*a+(button_size*a)+Y_calculator_layout && mouseY <(spacer*a+(button_size*a)+Y_calculator_layout)+button_size){
          fill(200);
          rect(spacer+(button_size)+X_calculator_layout*11,spacer*a+(button_size*a)+Y_calculator_layout,button_size*2,button_size,15);
        println(a+10);
        }
  }
  
}
