void setup() {
  size(300, 300);
  stroke(0, 0, 0);
  strokeWeight(5);
  drawRectangle();
}

void drawRectangle() {
  fill(0, 0, 255);
  rect(0, 0, 200, 20);
  fill(255, 255, 102);
  rect(0, 20, 200, 280);
  fill(255, 0, 0);
  rect(200, 0, 100, 20);
  fill(255, 255, 255);
  rect(200, 20, 100, 280);
}
