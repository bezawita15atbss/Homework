void setup() {
  size(700, 700);
  background(160, 160, 160);
  translate(width/2, height); 
  scale(0.3, 0.3);
  // strokeWeight(2);
  rotate(-PI/2);
  drawTree(10, 100, 100);
}


void drawTree(int depth, int thickness, int branchLength) {
  if (depth>0) {

    //draw base

    stroke(66, 34, 12);
    strokeWeight(thickness);
    line(0, 0, branchLength-5, 0);

    translate(branchLength-5, 0);


    //draw left branch
    pushMatrix();
    rotate(radians(random(-20, -45)));
    //stroke(255, 0, 0);
    stroke(66, 34, 12);
    if (depth<7) {
      stroke(0, 85, 0); // green
    }
    strokeWeight(thickness);
    line(0, 0, branchLength-5, 0);
    translate(branchLength-5, 0);
    drawTree(depth-1, thickness/2, branchLength-5);
    popMatrix();


    //draw the right branch
    pushMatrix();
    rotate(radians(random(0, 25)));
    // stroke(0, 255, 0);
    stroke(66, 34, 12);
    if (depth<7) {
      stroke(0, 85, 0); // green
    }
    strokeWeight(thickness);
    line(0, 0, branchLength-5, 0);
    translate(branchLength-5, 0);
    drawTree(depth-1, thickness/2, branchLength-5);
    popMatrix();

    //draw middle branch
    pushMatrix();
    rotate(radians(random(-20, 20)));
    stroke(66, 34, 12);
    if (depth<7) {
      stroke(0, 85, 0);
    }
    strokeWeight(thickness);
    line(0, 0, branchLength-5, 0);
    translate(branchLength-5, 0);
    drawTree(depth-1, thickness/2, branchLength-5);
    popMatrix();
  }
}
