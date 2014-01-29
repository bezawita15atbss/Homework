float randomX;
float randomY;
void setup() {
  size(300, 300);
  stroke(0, 0, 0);
  strokeWeight(5);
  randomX = random(0, width);
  randomY = random(0, height);
  drawRectangle();
}

void drawRectangle() {
  fill(0, 0, 255);//blue
  rect(0, 0, randomX, randomY);
  fill(255, 255, 102);//yellow
  rect(randomX, 0, width-randomX, randomY);
  fill(255, 0, 0);//red
  rect(0, randomY, randomX, height-randomY);
  fill(255, 255, 255);//white
  rect(randomX, randomY, width-randomX, height-randomY);
 
}
