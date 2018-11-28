float xBranchStart = 0.0; 
float yBranchStart = 0.0;
float xBranchEnd = 50.0;
float yBranchEnd = 0.0;

void setup() {
size(600,400);
background(255,255,255); // the outside  night color

//wall();
//snow();
tree();
}

void draw() {
  

}

// outside scenery
void snow() {
  fill(#FFFFFF);
  rect(width/3, height/3, width, 2*height/3);
}
void plane() {}

// inside scenery
void wall() {
  beginShape();
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
            rotate(3*PI/4);
              line(xBranchStart, yBranchStart, xBranchEnd, yBranchEnd);
          popMatrix();
          yBranchEnd--;
        }
        
        if (i%2!=0){
          // needles point to the right
          pushMatrix();
            rotate(PI/4);
              line(xBranchStart, yBranchStart, xBranchEnd, yBranchEnd);
          popMatrix();
          yBranchEnd++;
         
          // changes apply after each pair
          xBranchEnd+=3; // branches gradually get longer towards the bottom
          translate(0,6);          
        }
      }   
  popMatrix();
} 
void ornaments() {}
void presents() {}
void fireplace() {}
void fire() {}
void stocking() {}