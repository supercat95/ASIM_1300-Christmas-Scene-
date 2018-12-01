// variables for the snowflake
float yTranslation = 10;
Snowflake[] SnowflakeArray = new Snowflake[15];

// variables for the tree
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
int red;
int green;
int blue;

void setup() {
  size(600,400);
  background(0,0,0); // the outside  night color
  
  // outside scenery
  initializeSnowflake();
  wall();
  snow();
  
  // inside scenery
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

void draw() {
  red();
  green();
  blue();
  
  ornaments(red, green, blue, xCenter, yCenter);
  star();
 
  //pushMatrix();
  //  for (int i = 0; i < SnowflakeArray.length; i++) {
  //    SnowflakeArray[i].snowflake(yTranslation);
  //    yTranslation++;
  //    println(SnowflakeArray.length);
  //  }
  //popMatrix();
  
//wall();
//textSize(10);
//fill(255,0,0);
//text(pmouseX, 20, 370);
//text(pmouseY, 20, 385);
}

void initializeSnowflake() {
  println("initalizeSnowflake is running");
  for (int i = 0; i < SnowflakeArray.length; i++) {
    SnowflakeArray[i] = new Snowflake();
  }
}
