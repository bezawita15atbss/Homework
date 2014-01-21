void setup() {
  size(300, 300);
 noFill();
 ellipse(0, height/2, height/2, height/2);
 drawCircle(height/2, 0);
}

void drawCircle(float radius, float priorX){  
  ellipse(priorX+10, height/2, radius-5, radius-5);
// drawCircle(0, height/2);
  
  if(radius>10){
    drawCircle(radius-5, priorX+10);
  }
}
