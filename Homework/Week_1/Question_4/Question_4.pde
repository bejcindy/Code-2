float x,a,y,b;
boolean p;

void setup(){
  size(600,600);
  a=1;
  b=1;
  y=height/2;
  p=false;
}

void draw(){
  background(255);
  if(mousePressed&&mouseX<=x+50&&mouseX>=x-50&&mouseY<=y+50&&mouseY>=y-50){
    p=true;
  }
  if(p==true){
    x=width/2;
    if(y<0||y>height){
      b=-b;
    }
    y+=b;
  }else if(p==false){
    if(x<0||x>width){
      a=-a;
    }
    x+=a;
  }
  ellipse(x,y,100,100);
}

void mousePressed(){
  
}
