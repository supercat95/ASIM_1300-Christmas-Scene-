void outside() {
    noStroke();
    fill(0,0,0); // the outside night color
    rect(width/6, 0, 2*width/3, 2*height/3);
}
// ================================================================
void snow() {
  fill(#FFFFFF);
  rect(width/3-100, height/3+100, 2*width/3, height/3-100); // width of window
}
// ================================================================
void snowflake() { // code reused from a bug with the tree needles
pushMatrix();
  stroke(255,255,255, 200);
  strokeWeight(1);
  translate(random(110,5*width/6-10), random(0,2*height/3)-10); // window frame
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
       
        rotate(rotate2--);
      }
    }   
popMatrix();
}
// ================================================================
void plane() {}
