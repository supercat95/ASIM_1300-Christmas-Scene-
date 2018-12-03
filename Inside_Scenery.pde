void bricks() {
  pushMatrix();
    fill(#C42C4F); // plum-like
    rect(0,0, width, height);
    
    stroke(#FCF9EB); // beige color
    strokeWeight(5);
    
    for (int i = 0; i < 13; i++) { // verticle lines
        yEnd = height;
        xEnd = xStart;
        line (xStart, yStart, xEnd, yEnd);
        xStart += width/12;
     }
      
     xStart = 0.0;
     yStart = 0.0;
     for (int i = 0; i < 13; i++) { // horizontal lines
        yEnd = yStart;
        xEnd = width;
        line(xStart, yStart, xEnd, yEnd);
        yStart += height/12;
      }
  popMatrix();
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

void trunk() {
  pushMatrix();
    translate(width/2, 2*height/3);
      fill(#833C30); // brown 
      noStroke();
      rect(-25.0,0.0, width/12,height/4);
  popMatrix();
    
  // spine
  //pushMatrix();
  //  translate(width/2, 50.0);
  //  stroke(#833C30); // brown 
  //  strokeWeight(5.0);
  //  line(0.0,0.0, 0.0, 270.0);
  //popMatrix();
  
}
// ================================================================
void rug() {
  pushMatrix();
    translate(width/2, 350); // center-ish of truck
    fill(#6216DE); // purple 
    noStroke();
    ellipse(0,0, 150.0, 100.0);
  popMatrix();
}
// ================================================================
void ornaments(float xCenter[], float yCenter[]) {
  pushMatrix();
    ellipseMode(CENTER);
    noStroke();
    translate(width/2, height/2); // middle of trees
      for (int i = 0; i < numberOfOrnaments; i++) {
        fill(240, 25, 25);
        ellipse(xCenter[i], yCenter[i], circleWidth, circleHeight);
      }
  popMatrix();
}

void star() {
  pushMatrix();
    translate(width/2, 50.0); // location of trees
      fill(#FFEA00); // golden
      noStroke();
      triangle(0,5, 15,-15, -15,-15); 
      pushMatrix();
        rotate(PI);
          triangle(0,20, 15,0, -15,0);
      popMatrix();
  popMatrix();
}
// ================================================================
void presents() {
  //fill(#0B8298); // blue
  pushMatrix();
    translate(0.0,0.0);
      fill(#90D2FA); // lighter blue
      noStroke();
      rect(7.5*width/12,10.0*height/12, 2.0*width/12,1.5*height/12);
      stroke(255,255,255); 
      strokeWeight(5);
      // horizontal line
      line(7.5*width/12+2.9,10.75*height/12, 9.5*width/12-3.0,10.75*height/12);
      // vertical line
      line(8.5*width/12+2.9,10.0*height/12-3.0, 8.5*width/12+2.9,11.5*height/12-3.0);     
  popMatrix();
}
