void setup(){
  size(600,600);
  background(255);
}

void draw(){
  drawCircle(10,10,width);
}

void drawCircle(float x,float y,float radius){
  ellipse(x,y,radius,radius);
  if(radius>5){//base case
    radius*=.9;
    //drawCircle(x/2,y/2,radius);
    drawCircle(x*1.1,y*1.1,radius);
  }
}
