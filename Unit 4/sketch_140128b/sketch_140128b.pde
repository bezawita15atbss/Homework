float randomX;
float randomY;
float newwidth;
float newheight;
float newX;
float newY;

void setup() {
  size(300, 300);
  stroke(0, 0, 0);
  strokeWeight(5);
  randomX = random(0, width);
  randomY = random(0, height);
  newwidth = randomX;
  newheight = randomY;
  newX = random(50, newwidth);
  newY = random(50, newheight);
  drawRectangle(width, height);
//  drawRectangle2();
}

void drawRectangle(float rectwidth, float rectheight) {
  fill(0, 0, 255);//blue
  rect(0, 0, randomX, randomY);
  fill(255, 255, 102);//yellow
  rect(randomX, 0, width-randomX, randomY);
  fill(255, 0, 0);//red
  rect(0, randomY, randomX, height-randomY);
  fill(255, 255, 255);//white
  rect(randomX, randomY, width-randomX, height-randomY);
   
  if(randomX>25){
    drawRectangle(randomX, randomY);
  }
}

//void drawRectangle2() {
//  fill(0, 0, 255);//blue
//  rect(0, 0, newX, newY);
//  fill(255, 255, 102);//yellow
//  rect(newX, 0, newwidth-newX, newY);
//  fill(255, 0, 0);//red
//  rect(0, newY, newX, newheight-newY);
//  fill(255, 255, 255);//white
//  rect(newX, newY, newwidth-newX, newheight-newY);
//}
