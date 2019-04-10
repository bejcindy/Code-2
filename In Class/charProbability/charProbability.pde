char c='b';
//char = a single character
float xPos=100;
float yPos;
float targetX,targetY,easingRate;

void setup(){
  size(500,500);
  easingRate=0.01;
  
  targetY=height/2;
  yPos=height/2;
}

void draw(){
  background(255);
  
  println(stateProb());
  
  if(c=='a'){
    targetX=100;
  }else if(c=='b'){
    targetX=400;
  }
  
  xPos+=(targetX-xPos)*easingRate;
  //yPos+=(targetY-yPos)*easingRate;
  
  ellipse(xPos,yPos,50,50);
}

char stateProb(){
  float r=random(0,1);
  if(c=='a'){
    if(r<=0.9){
      c='a';
    }else{
      c='b';
    }
  }
  
  if(c=='b'){
    if(r<=0.9){
      c='a';
    }else{
      c='b';
    }
  }
  return c;
}
