void snow() {
  fill(#FFFFFF);
  rect(width/3-100, height/3+100, width, height/3-100);
}
// ================================================================
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
// ================================================================
void plane() {}