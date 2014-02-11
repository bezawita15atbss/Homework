void setup() {
  size(400, 400);
  translate(width/2, height); 
  strokeWeight(5);
    rotate(-PI/2);
  drawTree(2);
}

void drawTree(int depth) {
  if (depth>0) {
    //draw base
    stroke(0, 0, 255);
    line(0, 0, 100, 0);

    translate(100, 0);

    //draw left branch
    pushMatrix();
    rotate(-PI/4);
    stroke(255, 0, 0);
    line(0, 0, 100, 0);
    translate(100, 0);
    drawTree(depth-1);
    popMatrix();
   

    //draw the right branch
    pushMatrix();
    rotate(PI/4);
    stroke(0, 255, 0);
    line(0, 0, 100, 0);
    translate(100, 0);
    drawTree(depth-1);
    popMatrix();
  }
}
