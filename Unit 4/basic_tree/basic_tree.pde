void setup() {
  size(700, 700);
  translate(width/2, height); 
  scale(0.3, 0.3);
  // strokeWeight(2);
  rotate(-PI/2);
  drawTree(10, 20);
}

void drawTree(int depth, int thickness) {
  if (depth>0) {
    //draw base
    stroke(0, 0, 255);
    strokeWeight(thickness);
    line(0, 0, 100, 0);

    translate(100, 0);

    
      //draw left branch
    pushMatrix();
    rotate(radians(random(-30, -270)));
    stroke(255, 0, 0);
    line(0, 0, 100, 0);
    translate(100, 0);
    drawTree(depth-1, thickness-2);
    popMatrix();


    //draw the right branch
    pushMatrix();
    rotate(radians(random(0, 50)));
    stroke(0, 255, 0);
    line(0, 0, 100, 0);
    translate(100, 0);
    drawTree(depth-1, thickness);
    popMatrix();
  }
}
