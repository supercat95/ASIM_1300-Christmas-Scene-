float xSnowflakeStart = 0.0; 
float ySnowflakeStart = 0.0;
float xSnowflakeEnd = 10.0;
float ySnowflakeEnd = 0.0;
float rotate1 = degrees(3*PI/4);
float rotate2 = degrees(PI/4);

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
