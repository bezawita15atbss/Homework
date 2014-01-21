void setup() {
  size(300, 300);
  noFill();
  ellipse(width/2, height/2, height/2, height/2);
  drawCircle(height/2, height/2, height/2);
  drawCircle(height/2, height/2, height/2);
  drawCircle(height/2, height/2, height/2);
  drawCircle(height/2, height/2, height/2);
}

void drawCircle(int x, int y, float radius) {
  ellipse(x+15, y+15, radius-10, radius-10);
 if (radius>10) {
    drawCircle(x+15, y+15, radius-10);
 }
}
