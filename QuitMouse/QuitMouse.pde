//global variables
float xbuttoncenter, ybuttoncenter,buttonheight, buttonwidth ;
color red = #FF0808, blue = #0A08FF, resetButtonColour = #FFFFFF, buttonFill;
//
void setup() {
  size(500, 500);
  //populatying variables
  int centerX = width/2;
  int centerY = height/2;
  int centeringbuttonwidth = width*1/4;
  int centeringbuttonheight = height*1/4;
  xbuttoncenter = centerX - centeringbuttonwidth;
  ybuttoncenter = centerY - centeringbuttonheight;
  buttonheight = height*1/2;
  buttonwidth = width*1/2;
}//end setup
//
void draw() {
  if (mouseX>xbuttoncenter && mouseX<xbuttoncenter+buttonwidth && mouseY>ybuttoncenter && mouseY<ybuttoncenter+buttonwidth) {
    buttonFill = red;
  } else {
    buttonFill = blue;
  } //endhoverover
  fill(buttonFill); // 2-colors to start, rmember that nightMode adds choice
  rect(xbuttoncenter,ybuttoncenter,buttonheight,buttonwidth);
  fill(resetButtonColour);
  //
  //repeating CONSOLE values illustrating mousex and mousey to a formula mouse buttons
  //println("X-Value", xbuttoncenter,"\t",mouseX,"\t",xbuttoncenter+buttonwidth, "\t\t look at the middle value");
  //println("Y-Value", ybuttoncenter,"\t",mouseX,"\t",ybuttoncenter+buttonwidth, "\t\t look at the middle value");
}//end draw
//
void keyPressed() {
  if (key=='q' || key=='Q') exit();
}//end keypressed
//
void mousePressed() {
  if(mouseX>xbuttoncenter && mouseX<xbuttoncenter+buttonwidth && mouseY>ybuttoncenter && mouseY<ybuttoncenter+buttonwidth) exit();

}//end mousepressed
//
//end main program
