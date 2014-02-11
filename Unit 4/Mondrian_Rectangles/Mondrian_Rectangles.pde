void setup() {

  // canvas size
  size(400, 500);
  
  // HSB colour model
  colorMode(HSB, 360, 100, 100);

  // background colour is white
  background(0, 0, 100);

  // thick stroke for rectangles
  strokeWeight(5);

  // black borders
  stroke(0);
  
  // start things off.. invoke the drawRectangles function
  drawRectangles(width, height);
}

// drawRectangles
// Purpose: Sub-divide a rectangle into four smaller rectangles
//
// Parameters:   rectangleWidth  the width of the rectangle to be sub-divided
//               rectangleHeight  the height of the rectangle to be sub-divided
void drawRectangles(float rectangleWidth, float rectangleHeight) {
  
  // get my random width and height
  float randomWidth = random(25, rectangleWidth - 25);
  float randomHeight = random(25, rectangleHeight - 25);

  // draw first rectangle
  fill(0, 0, 100); // white fill
  rect(0, 0, randomWidth, randomHeight);

  // draw second rectangle
  fill(0, 80, 90); // red fill
  rect(randomWidth, 0, rectangleWidth - randomWidth, randomHeight); 

  // draw third rectangle
  fill(240, 80, 90); // blue fill
  rect(0, randomHeight, randomWidth, rectangleHeight - randomHeight);

  // draw fourth rectangle
  fill(60, 80, 90); // yellow fill
  rect(randomWidth, randomHeight, rectangleWidth - randomWidth, rectangleHeight - randomHeight);
  
  if(randomWidth>25){
    drawRectangles(randomWidth, randomHeight);
  }
}
