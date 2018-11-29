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
float xBranchEnd = 50.0;
float yBranchEnd = 0.0;
float leftRotation = 3*PI/4;
float rightRotation = PI/4;
float rotation = PI/40;



void setup() {
size(600,400);
background(0,0,0); // the outside  night color

snowflake(); // add functions to randomize spawn point
wall();
snow();
tree(); // add functions to slightly randomize length and angles
}

void draw() {

//wall();
//textSize(10);
//fill(255,0,0);
//text(pmouseX, 20, 370);
//text(pmouseY, 20, 385);
}

// outside scenery
void snow() {
  fill(#FFFFFF);
  rect(width/3-100, height/3+100, width, height/3-100);
}

void snowflake() { // code reused from a bug with the tree needles
  pushMatrix();
    stroke(255,255,255);
    strokeWeight(2);
    translate(width/3, 0);
      for (int i = 0; i < 50; i++) {  
        if (i%2==0) {
          pushMatrix();
            rotate(rotate1);
              line(xSnowflakeStart, ySnowflakeStart, xSnowflakeEnd, ySnowflakeEnd);
          popMatrix();
          rotate(rotate1--);
        }
        
        if (i%2!=0){
          pushMatrix();
            rotate(rotate2);
              line(xSnowflakeStart, ySnowflakeStart, xSnowflakeEnd, ySnowflakeEnd);
          popMatrix();
         
          // changes apply after each pair
          xSnowflakeEnd+=0.5; // branches gradually get longer towards the bottom
          rotate(rotate2--);
        }
      }   
  popMatrix();
}

void plane() {}

// inside scenery
void wall() {
  beginShape();
    noStroke();
    fill(#FCF9EB); // beige color
    vertex(0, 0); // top left
    vertex(width/6, 0); // top right
    vertex(width/6, 2*height/3); // middle angle
    vertex(width, 2*height/3); // top of bottom right
    vertex(width, height); // bottom right
    vertex(0, height); // bottom left;
    vertex(0,0); // closes shape
  endShape();
}

void tree() {
  pushMatrix();
    stroke(89, 112, 44); // pine needle green
    strokeWeight(2);
    translate(2*width/3, 50.0);
      for (int i = 0; i < 50; i++) { // needles point to the left    
        if (i%2==0) {
          pushMatrix();
            rotate(leftRotation);
              line(xBranchStart, yBranchStart, xBranchEnd, yBranchEnd);
          popMatrix();
        }
        
        if (i%2!=0) { // needles point to the right
          pushMatrix();
            rotate(rightRotation);
              line(xBranchStart, yBranchStart, xBranchEnd, yBranchEnd);
          popMatrix();
          
          // changes apply after each pair
          xBranchEnd+=3; // branches gradually get longer towards the bottom
          translate(0,6);
        }
      }   
      
      // for the curved branches at the bottom
      pushMatrix();
      rotate(PI/4);
        for (int i = 0; i < 21; i++) {
            line(xBranchStart, yBranchStart, xBranchEnd, yBranchEnd);
            rotate(rotation);
            if (i < 10) { // branches lengthen from right to middle
              xBranchEnd+=0.5;
            }
            if (i > 10) { // branches shortern from middle to left
              xBranchEnd-=0.5;
            }
            
        }
      popMatrix();
  popMatrix();
} 
void ornaments() {}
void presents() {}
void fireplace() {}
void fire() {}
void stocking() {}