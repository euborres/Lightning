int startX = 0;
int startY=150;
int endX = 0;
int endY = 150;

int newStartX = 150;
int newStartY = 0;
int newEndX = 150;
int newEndY = 0 ;
void setup()
{
  background(0);
  size(300,300);
  clouds();
}

void clouds(){
  strokeWeight(5);
  stroke(171,178,175);
  fill(171,178,175);
  ellipse(125,0,70,70);
  ellipse(170,0,70,70);
}

void draw()
{
  clouds();
  


  //background(0);
  
/*
  while(endX < 300){
    endX = startX + ((int)(Math.random() * 10));
    endY = startY + ((int)(Math.random() * 19) - 9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    }
  */
  strokeWeight(5);
  stroke((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
  while(newEndY < 300){
    newEndX = newStartX + ((int)(Math.random() * 19)-9);
    newEndY = newStartY + ((int)(Math.random() * 10));
    line(newStartX, newStartY,newEndX,newEndY);
    newStartX = newEndX;
    newStartY = newEndY;

  }  
   
}

void mousePressed()
{
/*
  startX = 0;
  startY=150;
  endX = 0;
  endY = 150;
  */
  newStartX = 150;
  newStartY = 0;
  newEndX = 150;
  newEndY = 0;
  background(0);
}
