Object myObject; 

void setup(){
  size(600, 600); 
  
  myObject = new Object(); 
}

void draw(){
  background(255); 
  myObject.move(); 
  myObject.checkBoundaries(); 
  myObject.display(); 
}


class Object{
  PVector pos, vel, accel; 
  
  Object(){
    pos = new PVector(width/2, height/2); 
    vel = new PVector(0, 0); 
    
  }
  
  void move(){
    PVector mouse = new PVector(mouseX,mouseY);
    accel = PVector.sub(mouse,pos);
    accel.normalize();
    //normalize your accel vector here
    
    vel.limit(4); 
    vel=vel.add(accel);
    pos=pos.add(vel);
    //basic movement vector addition here...
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(pos.x,pos.y,30,30);
  }
  
  void checkBoundaries(){
    //add logic here so when the ellipse gets to the edge of the 
    //it is positioned on the opposite side
    if(pos.x>=width&&vel.x>0||pos.x<=0&&vel.x<0){
      pos.x=width-pos.x;
    }
    if(pos.y>=height&&vel.y>0||pos.y<=0&&vel.y<0){
      pos.y=height-pos.y;
    }
  }
}
