float x,y;
float r,g;

void setup(){
 size(600,600); 
 noStroke();
}

void draw(){
  background(255);
  x=map(mouseX, 0, width, width, 0);
  y=map(mouseY, 0, height, height, 0);
  r=map(mouseX,0,width,0,200);
  g=map(mouseY,0,height,0,200);
  fill(r,g,150);
  ellipse(x,y,100,100);
}
