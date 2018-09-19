int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
void setup(){
  background(51,16,118);
  size(300,300);
}
void draw(){
  clouds();
  lightning();
}

void clouds(){
  strokeWeight(5);
  stroke(171,178,175);
  fill(171,178,175);
  ellipse(120,0,70,70);
  ellipse(160,0,70,70);
  ellipse(210,0,70,70);
}
void lightning(){
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

void mousePressed(){
  clouds();
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
  background(51,16,118);

}
