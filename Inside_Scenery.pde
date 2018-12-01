void wall() {
  beginShape();
    noStroke();
    fill(#FCF9EB); // beige color
    vertex(0, 0); // top left corner
    vertex(width/6, 0); // top left
    vertex(width/6, 2*height/3); // middle left angle
    vertex(5*width/6, 2*height/3); // middle right angle
    vertex(5*width/6, 0); // top right
    vertex(width, 0); // top right corner
    vertex(width, height); // bottom right
    vertex(0, height); // bottom left;
    vertex(0,0); // closes shape
  endShape();
}
// ============================================================
void lightTree() { // code used from darkTree()
   pushMatrix();
    stroke(123, 152, 62); // light pine needle green
    strokeWeight(2);
    translate(width/2, 50.0);
      for (int i = 0; i < 50; i++) { // needles point to the left   
        yBranchEnd = random(yBranchEnd-=5.0, yBranchEnd=+5.0);
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
          xBranchEnd+=3.0; // branches gradually get longer towards the bottom
          translate(0,6);
        }
      }   
      
      // for the curved branches at the bottom
      pushMatrix();
      rotate(PI/4);
        for (int i = 0; i < 21; i++) {
            line(xBranchStart, yBranchStart, xBranchEnd, yBranchEnd);
            rotate(random(rotation-radians(3), rotation+radians(3)));
              if (i < 10) { // branches lengthen from right to middle
                xBranchEnd+= random(0.1,0.7);
              }
              if (i > 10) { // branches shortern from middle to left
                xBranchEnd-= random(0.1,0.7);
              }         
        }
      popMatrix();
  popMatrix();
}

void darkTree() {
  xBranchEnd = 50.0;
  pushMatrix();
    stroke(89, 112, 44); // dark pine needle green
    strokeWeight(2);
    translate(width/2, 50.0);
      for (int i = 0; i < 50; i++) { // needles point to the left   
        yBranchEnd = random(yBranchEnd-=5.0, yBranchEnd=+5.0);
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
          xBranchEnd+=3.0; // branches gradually get longer towards the bottom
          translate(0,6);
        }
      }   
      
      // for the curved branches at the bottom
      pushMatrix();
      rotate(PI/4);
        for (int i = 0; i < 21; i++) {
            line(xBranchStart, yBranchStart, xBranchEnd, yBranchEnd);
            rotate(random(rotation-radians(3), rotation+radians(3)));
              if (i < 10) { // branches lengthen from right to middle
                xBranchEnd+= random(0.1,0.7);
              }
              if (i > 10) { // branches shortern from middle to left
                xBranchEnd-= random(0.1,0.7);
              }         
        }
      popMatrix();
  popMatrix();
} 
// ================================================================
int red() {
  return red = int(random(227, 255));
}

int green() {
  return green = int(random(0, 37));
}

int blue() {
  return blue = int(random(0, 27));
}

void ornaments(int red, int green, int blue, float xCenter[], float yCenter[]) {
  pushMatrix();
    ellipseMode(CENTER);
    noStroke();
    translate(width/2, height/2); // middle of trees
      for (int i = 0; i < numberOfOrnaments; i++) {
        fill(red, green, blue);
        ellipse(xCenter[i], yCenter[i], circleWidth, circleHeight);
      }
  popMatrix();
}

void star() {
  pushMatrix();
    translate(width/2, 50.0); // location of trees
      fill(random(175,240), random(155,220), random(75,120)); // golden
      noStroke();
      triangle(0,5, 15,-15, -15,-15); 
      pushMatrix();
        rotate(PI);
          triangle(0,20, 15,0, -15,0);
      popMatrix();
  popMatrix();
}
// ================================================================
void presents() {}
