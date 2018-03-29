import controlP5.*;
import processing.serial.*;

Serial port;
ControlP5 cp5; // create ControlP5 object
PFont font;
void setup(){ 
 
  size (300, 450); //window size
  
  
  
  printArray(Serial.list());
  
  port = new Serial(this, "/dev/cu.usbmodem1411" , 9600);
  
  
  cp5 = new ControlP5(this);
  font = createFont("calibri light bold", 20);
  cp5.addButton("green") //green name of button
   .setPosition(100, 50) 
   .setSize(100,70)
   .setFont (font)
  ;
  
  cp5.addButton("red") //red name of button
   .setPosition(100, 150) 
   .setSize(100,70)
    .setFont (font)
   ;
    cp5.addButton("blue") //blue name of button
   .setPosition(100, 250) 
   .setSize(100,70)
    .setFont (font)
   
   ;
    cp5.addButton("off") //off name of button
   .setPosition(100, 350) 
   .setSize(100,70)
    .setFont (font)
   ;
}


void draw(){
  
  background(209, 152, 199); //background colour
  fill(61, 4, 51);
  textFont(font);
  text("LED CONTROL", 80, 30);

}

void green (){
  port.write ('g') ;
  println("green");
}
void red (){
  port.write('r');
  println("red");
}
void blue (){
  port.write('b');
  println("blue");
}
void off (){
  port.write('f');
}
