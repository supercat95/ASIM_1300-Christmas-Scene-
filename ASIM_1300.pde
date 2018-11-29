// variables for the snowflake
float xSnowflakeStart = 0.0; 
float ySnowflakeStart = 0.0;
float xSnowflakeEnd = 1.0;
float ySnowflakeEnd = 0.0;
float rotate1 = degrees(3*PI/4);
float rotate2 = degrees(PI/4);

// variables for the tree
float xBranchStart = 0.0; 
float yBranchStart = 0.0;
float xBranchEnd = 50.0; // actual length is randomized within a range
float yBranchEnd = 0.0;
float leftRotation = 3*PI/4;
float rightRotation = PI/4;
float rotation = PI/40;

// variables for the ornaments
float[] xCenter;
float[] yCenter;
float circleWidth = 12.0;
float circleHeight = 12.0;
int numberOfOrnaments;
int red;
int green;
int blue;

void setup() {
  size(600,400);
  background(0,0,0); // the outside  night color
  
  // outside scenery
  snowflake(); // add functions to randomize spawn point
  wall();
  snow();
  
  // inside scenery
  lightTree();
  darkTree();
  
  numberOfOrnaments = int(random(10, 20));
  xCenter = new float[numberOfOrnaments];
  for (int i = 0; i < numberOfOrnaments; i++) {
    xCenter[i] = random(-40.0, 40.0);
  }
  yCenter = new float[numberOfOrnaments];
  for (int i = 0; i < numberOfOrnaments; i++) {
    yCenter[i] = random(-115.0, 90.0);
  }
  

}

void draw() {
  red();
  green();
  blue();
  
  ornaments(red, green, blue, xCenter, yCenter);
  
  
//wall();
//textSize(10);
//fill(255,0,0);
//text(pmouseX, 20, 370);
//text(pmouseY, 20, 385);
}