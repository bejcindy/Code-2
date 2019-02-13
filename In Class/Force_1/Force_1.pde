Mover mover;
Attract a;

void setup(){
  size(500,500);
  mover=new Mover(10,random(0,width),random(0,height));
  a=new Attract();
}

void draw(){
  background(0);
  a.display();
  
  PVector f=a.attract(mover);
  mover.applyForce(f);
  mover.update();
  mover.display();
}
