// variables for the bricks
float xStart = 0.0;
float yStart = 0.0;
float xEnd = 0.0;
float yEnd = 0.0;

// variables for the trees
float xBranchStart = 0.0; 
float yBranchStart = 0.0;
float xBranchEnd = 50.0; // actual length is randomized within a range
float yBranchEnd = 0.0;
float leftRotation = 3*PI/4;
float rightRotation = PI/4;
float rotation = PI/40; // actual rotation is randomized within a range

// variables for the ornaments
float[] xCenter;
float[] yCenter;
float circleWidth = 12.0;
float circleHeight = 12.0;
int numberOfOrnaments;

void setup() {
  size(600,400);
  background(0,0,0);
  
  // outside scenery
  bricks();
  outside();
  snow();
  for (int i = 0; i < 50; i++) {
    snowflake();
  }
  
  // inside scenery
  rug();
  trunk();
  lightTree();
  darkTree();
  
  numberOfOrnaments = int(random(15, 25));
  xCenter = new float[numberOfOrnaments];
  for (int i = 0; i < numberOfOrnaments; i++) {
    xCenter[i] = random(-40.0, 40.0);
  }
  yCenter = new float[numberOfOrnaments];
  for (int i = 0; i < numberOfOrnaments; i++) {
    yCenter[i] = random(-115.0, 90.0);
  }
  

}
// ================================================================
void draw() {
  ornaments(xCenter, yCenter);
  star();
  
//bricks();
//textSize(10);
//fill(0,0,255);
//text(pmouseX, 20, 370);
//text(pmouseY, 20, 385);
}
