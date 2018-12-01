class Snowflake {
  float xSnowflakeStart = 0.0; 
  float ySnowflakeStart = 0.0;
  float xSnowflakeEnd = 10.0;
  float ySnowflakeEnd = 0.0;
  float rotate1 = degrees(3*PI/4);
  float rotate2 = degrees(PI/4);
  
  void snowflake(float yTranslation) { // code reused from a bug with the tree needles
  pushMatrix();
    stroke(255,255,255, 200);
    strokeWeight(1);
    translate(random(100,width), yTranslation); // edge of window
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
}
