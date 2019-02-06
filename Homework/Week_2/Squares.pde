class Action{
  float x,y;
  float g;
  float angle;
  float speed;
  
  Action(){
    x=mouseX;
    y=mouseY;
    speed=.005;
    g=0.1;
    angle=0;
  }
  
  void fall(){
    y+=g;
  }
  
  void spin(){
    angle+=speed;
  }
}

class Squares extends Action{
  
  color c;
  float size;
  
  Squares(){
    size=random(5,20);
  }
  
  void bounce(){
    y=-y*.7;
  }
  
  void sideBounce(){
    x=-x;
  }
  
  void display(){
    c=color(map(x,0,width,0,255),map(y,0,height,100,255),170);
    fill(c);
    size=map(y,0,height,0,100);
    
    pushMatrix();
    angle += speed;
    rotate(angle);
    rect(x,y,size,size);
    popMatrix();
  }
}
