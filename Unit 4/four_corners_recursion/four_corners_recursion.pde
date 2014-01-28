void setup() {
  size(300, 300);
  noFill();
  ellipse(width/2, height/2, height/2, height/2);
  drawCircle(height/2, height/2, height/2);
  drawCircle2(height/2, height/2, height/2);
  drawCircle(height/2, height/2, height/2);
  drawCircle(height/2, height/2, height/2);
}

void drawCircle(int x, int y, float radius) {
  ellipse(x+15, y+15, radius-10, radius-10);
  if (radius>10) {
    drawCircle(x+15, y+15, radius-3);
  }
}

void drawCircle2(int x2, int y2, float radius2){
 ellipse(x2+15, y2+15, radius2-10, radius2-10);
  if (radius2>10) {
    drawCircle(x2-15, y2+15, radius2-1);
  }
}

void drawCircle3(int x3, int y3, float radius3){
 ellipse(x3+15, y3+15, radius3-10, radius3-10);
  if (radius3>10) {
    drawCircle(x3+15, y3-15, radius3-1);
  }
}

void drawCircle4(int x4, int y4, float radius4){
 ellipse(x4+15, y4+15, radius4-10, radius4-10);
  if (radius4>10) {
    drawCircle(x4-15, y4-15, radius4-1);
  }
}
