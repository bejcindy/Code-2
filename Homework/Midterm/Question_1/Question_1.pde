float radius;
int scale = 5; 
int a;
String g,s,t;

void setup(){
  size(500, 500); 
  radius=0;
  g=new String("Grow");
  s=new String("Shrink");
}

void draw(){
  background(0); 
  if(radius<=0){
    a=5;
  }
  if(radius>=width){
    a=-5;
  }
  radius+=a;
  if(a==5){
    t=g;
  }
  if(a==-5){
    t=s;
  }
  text(t, width*.1, height*.1); 
  ellipse(width/2, height/2, radius, radius);  
}
