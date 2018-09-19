import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
public void setup(){
  background(51,16,118);
  
}
public void draw(){
  clouds();
  lightning();
}

public void clouds(){
  strokeWeight(5);
  stroke(171,178,175);
  fill(171,178,175);
  ellipse(120,0,70,70);
  ellipse(160,0,70,70);
  ellipse(210,0,70,70);
}
public void lightning(){
  strokeWeight(5);
  stroke(226,215,247);
  while(endY < 300){
   endX = startX + ((int)(Math.random()*19)-9);
   endY = startY + ((int)(Math.random() * 10));
   line(startX,startY,endX,endY);
   startX = endX;
   startY = endY;
  }
}

public void mousePressed(){
  clouds();
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
  background(51,16,118);

}
  public void settings() {  size(300,300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
