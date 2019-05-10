int size;
int x,y;
float r,g,b,o;
float min,max;

void setup(){
  size(800,800);
  size = 10;
  background(255);
  noStroke();
  r=0;
  g=0;
  b=0;
  min=random(0,100);
  max=random(150,255);
}

void draw(){
  x = mouseX;
  y = mouseY;
  //happens continuously
  if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){
    if(mousePressed){
      //r=random(150,255);
      //g=random(150,255);
      //b=random(150,255);
      float noiseVal=noise(millis()*.01,millis()*.01);
      r=map(noiseVal,0,1,min,max);
      g=map(noiseVal,0,1,min,255);
      b=map(noiseVal,0,1,max,255);
      fill(r,g,b);
      ellipse(x,y,size,size);
      ellipse(width-x,y,size,size);
      ellipse(width-x,height-y,size,size);
      ellipse(x,height-y,size,size);
    }
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      size ++;
    }
    if(keyCode == DOWN){
      size --;
    }
    if(keyCode==LEFT){
      //fill(255);
      //rect(0,0,width,height);
      background(255);
    }
    if(keyCode==RIGHT){
      min=random(50,110);
      max=random(120,250);
    }
  }
}
