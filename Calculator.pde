int button_size = 80; //Button size
int button_operator_size = 200;
int button_stroke = 50;
int spacer = 0;       //Space between buttons
int Y_line = 25;        //Y of operations bar
int X_calculator_layout = 50;  //X of numbers layout
int Y_calculator_layout = 300; //Y of numbers layout
int X_operators = 300; //X of operator buttons
int X_title_margin = 20; //X margin of title
int Y_title_margin = 70; //Y margin of title
int button_color = 50; //Color of buttons
int button_touching_color = 200; //Color at touching buttons 
int button_corner_radius = 0; //Corner radius of buttons
int text_button_color = 255; //Text color of buttons
int text_touching_button_color = 50; //Text of buttons at touching
int X_text_button = 30; //X margin of text inside the buttons
int X_text_button_operator = 80; //X margin of text inside the operator buttons
int Y_text_button = 50;  // Y margin of text insde the button
int title_size = 45; //Title size
int operations_text_size = 25; // Operations text size
int text_size_button_operator = 45;
int text_size_button = 35; //Text size inside buttons
//-- Dont modify! --
int touching = 0; //
String operator = "null";
int result = 0;
String CalculatingText ="";
int calculating = 0;
//-- Dont modify! --

void setup() {
  size(600, 700);
}
void draw() {
  background(255);
  fill(0);
  textSize(title_size);
  text("Calculator", X_calculator_layout+X_title_margin, Y_title_margin);
  textSize(operations_text_size);
  text(CalculatingText, X_calculator_layout+X_title_margin, Y_calculator_layout-Y_line-10);
  stroke(0);
  strokeWeight(5);
  line(X_calculator_layout+X_title_margin, Y_calculator_layout-Y_line, width-(X_title_margin+X_calculator_layout), Y_calculator_layout-Y_line);
  strokeWeight(1);
  for (int a = 0; a<3; a++) {
    for (int i = 0; i<3; i++) { //0-9
    textSize(text_size_button);
    stroke(button_stroke);
      fill(button_color);
      rect(spacer*i+(button_size*i)+X_calculator_layout, spacer*a+(button_size*a)+Y_calculator_layout, button_size, button_size, button_corner_radius);
      fill(text_button_color);
      text(1+(a*2+i)+a, spacer*i+(button_size*i)+X_calculator_layout+X_text_button, spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
      if ( mouseX > spacer*i+(button_size*i)+X_calculator_layout && mouseX < (spacer*i+(button_size*i)+X_calculator_layout)+button_size
        && mouseY > spacer*a+(button_size*a)+Y_calculator_layout && mouseY <(spacer*a+(button_size*a)+Y_calculator_layout)+button_size) {
        fill(button_touching_color);
        rect(spacer*i+(button_size*i)+X_calculator_layout, spacer*a+(button_size*a)+Y_calculator_layout, button_size, button_size, button_corner_radius);
        fill(text_touching_button_color);
        text(1+(a*2+i)+a, spacer*i+(button_size*i)+X_calculator_layout+X_text_button, spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);

        touching = (1+(a*2+i)+a);
      }
    }
    textSize(text_size_button_operator);
    //operators
    fill(button_color);
    rect(spacer+X_calculator_layout+X_operators, spacer*a+(button_size*a)+Y_calculator_layout, button_operator_size, button_size, button_corner_radius);

    fill(text_button_color);
    if ((a+10)==10) {
      text("+", spacer+X_calculator_layout+X_operators+X_text_button_operator, spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
    }
    if ((a+10)==11) {
      text("-", spacer+X_calculator_layout+X_operators+X_text_button_operator+5, spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
    }
    if ((a+10)==12) {
      text("=", spacer+X_calculator_layout+X_operators+X_text_button_operator, spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
    }
    if ( mouseX > spacer+X_calculator_layout+X_operators && mouseX < (spacer+X_calculator_layout+X_operators)+button_operator_size
      && mouseY > spacer*a+(button_size*a)+Y_calculator_layout && mouseY <(spacer*a+(button_size*a)+Y_calculator_layout)+button_size) {
      fill(button_touching_color);
      rect(spacer+X_calculator_layout+X_operators, spacer*a+(button_size*a)+Y_calculator_layout, button_operator_size, button_size, button_corner_radius);
      fill(text_touching_button_color);
      touching = a+10;  
      if ((a+10)==10) {
        text("+", spacer+X_calculator_layout+X_operators+X_text_button_operator, spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
        if (mousePressed==true) {
          operator="plus";
        }
      }
      if ((a+10)==11) {
        text("-", spacer+X_calculator_layout+X_operators+X_text_button_operator+5, spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
        if (mousePressed==true) {
          operator="less";
        }
      }
      if ((a+10)==12) {
        text("=", spacer+X_calculator_layout+X_operators+X_text_button_operator, spacer*a+(button_size*a)+Y_calculator_layout+Y_text_button);
        if (mousePressed==true) {
        }
      }
    }
  }
}
void mousePressed() {
  print(touching);
  if ((touching == 1)|| (touching == 2)|| (touching == 3)||(touching == 4)||(touching == 5)||(touching == 6)||(touching == 7)||(touching == 8)||(touching == 9)) {
    CalculatingText= CalculatingText + touching;
  }
  if (touching ==10) {
    CalculatingText= CalculatingText + "+";
  }
  if (touching ==11) {
    CalculatingText= CalculatingText + "-";
  }
  if (touching ==12) {
    calculate();
  }
}
void calculate() {
  int a = 1;
  for (a = 1; a<CalculatingText.length(); a++) {
    char b = CalculatingText.charAt(a);
  }
  print(calculating);
}
