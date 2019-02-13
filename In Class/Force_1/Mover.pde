class Mover{
  PVector position, velocity, acceleration;
  float mass;
  
  Mover(float m, float x, float y){
    mass=m;
    position=new PVector(x,y);
    velocity=new PVector(1,0);
    acceleration=new PVector(0,0);
  }
  void applyForce(PVector force){
    PVector f=PVector.div(force,mass);
    acceleration.add(f);
  }
  void update(){
    position.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
  
  void display(){
    fill(255,100);
    ellipse(position.x,position.y,50,50);
  }
}
