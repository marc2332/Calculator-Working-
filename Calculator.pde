int button_size = 80;
int spacer = 10;
int Y_line = 25;
int X_calculator_layout = 50;
int Y_calculator_layout = 300;
int X_operators = 250;
int X_title_margin = 20;
int Y_title_margin = 70;
int button_color = 50;
int button_touching_color = 200;
int button_corner_radius = 10;
int text_button_color = 255;
int text_touching_button_color = 50;
int X_text_button = 30;
int Y_text_button = 50; 
int title_size = 45;
int text_size_button = 35;
int touching = 0;

int calculating = 0;


void setup(){
  size(600,700); 
}
void draw(){
  background(255);
  fill(0);
  textSize(title_size);
   text("Calculator",X_calculator_layout+X_title_margin,Y_title_margin);
   text(calculating,X_calculator_layout+X_title_margin,Y_calculator_layout-Y_line-10);
   stroke(0);
   strokeWeight(5);
  line(X_calculator_layout+X_title_margin,Y_calculator_layout-Y_line,width-(X_title_margin+X_calculator_layout),Y_calculator_layout-Y_line);
  stroke(255);
   strokeWeight(1);
  textSize(text_size_button);
  for(int a = 0; a<3; a++){
    for(int i = 0;i<3;i++){ //0-9
      fill(button_color);
      rect(spacer*i+(button_size*i)+X_calculator_layout,spacer*a+(button_size*a)+Y_calculator_layout,button_size,button_size,button_corner_radius);
      fill(text_button_color);
      text(1+(a*2+i)+a,spacer*i+(button_size*i)+X_calculator_layout+X_text_button,spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
      if( mouseX > spacer*i+(button_size*i)+X_calculator_layout && mouseX < (spacer*i+(button_size*i)+X_calculator_layout)+button_size
        && mouseY > spacer*a+(button_size*a)+Y_calculator_layout && mouseY <(spacer*a+(button_size*a)+Y_calculator_layout)+button_size){
          fill(button_touching_color);
          rect(spacer*i+(button_size*i)+X_calculator_layout,spacer*a+(button_size*a)+Y_calculator_layout,button_size,button_size,button_corner_radius);
          fill(text_touching_button_color);
          text(1+(a*2+i)+a,spacer*i+(button_size*i)+X_calculator_layout+X_text_button,spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
        if(mousePressed==true){
          touching = (1+(a*2+i)+a);  
          
          
      
        }
        }
  
      
    }
     //operators
    fill(button_color);
    rect(spacer+(button_size)+X_calculator_layout+X_operators,spacer*a+(button_size*a)+Y_calculator_layout,button_size*2,button_size,button_corner_radius);
    if( mouseX > spacer+(button_size)+X_calculator_layout+X_operators && mouseX < (spacer+(button_size)+X_calculator_layout+X_operators)+button_size*2
        && mouseY > spacer*a+(button_size*a)+Y_calculator_layout && mouseY <(spacer*a+(button_size*a)+Y_calculator_layout)+button_size){
          fill(button_touching_color);
          rect(spacer+(button_size)+X_calculator_layout+X_operators,spacer*a+(button_size*a)+Y_calculator_layout,button_size*2,button_size,button_corner_radius);
        if(mousePressed==true){
        println(a+10);
        }
        }
  }
}
void mousePressed(){
  if((touching == 1)|| (touching == 2)|| (touching == 3)||(touching == 4)||(touching == 5)||(touching == 6)||(touching == 7)||(touching == 8)||(touching == 9)){
    calculating= calculating+touching;
  }
}
