class kim {
  kim(){
    x = random(width);
    y = random(height);
    d = random(5,5);
    vy = random(4,5);
    vx = random(4,5);
  }
  kim(float a, float b, float c){
    x = a;
    y = b;
    d = c;
    vy = random(4,5);
    vx = random(4,5);
  }
  
  
  float x,y,d, vy,vx;
  
  void kout(){
    x += vx;
    y += vy;
    if (x>height || x<0) vx = -vx;
    if (y>height || y<0) vy= -vy;
  }
  
  void drawk(){
    
    //face
    fill(251,206,177);
    circle(x,y,d*10);
    
    //eye

    float eye_x= x-3*d;
    float eye_y = y-d;
    
    stroke(0,0,0);
    
    line(eye_x,eye_y,eye_x+2*d,eye_y-2*d);
    line(eye_x+2*d,eye_y,eye_x,eye_y-2*d);
 
    line(eye_x+4*d,eye_y,eye_x+6*d,eye_y-2*d);
    line(eye_x+6*d,eye_y,eye_x+4*d,eye_y-2*d);
    
    
    //mouth
    
    float mouth_x=x;
    float mouth_y=y+2*d;
    
    fill(128,128,128);
    circle(mouth_x,mouth_y,d*2);
    
  }
  
}
