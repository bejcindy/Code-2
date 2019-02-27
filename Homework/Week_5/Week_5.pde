int sceneNumber=0;
int state=0;
float x,y;
void setup(){
  size(600,600);
  x=width/2;
  y=height*2/3;
}

void draw(){
  switch(state){
    case 0:
    drawIntro();
    break;
  case 1:
    drawScene1();
    break;
  case 2:
    drawScene2();
    break;
  }
}

void keyPressed() {
  switch (state) {
  case 0:
    if (key == ' ') {
      state = 1;
    }
    break;
  }
}

void drawIntro() {
  background(0, 200, 120);
  fill(0);
  ellipse(width/2,height*2/3,100,100);
}

void drawScene1() {
  background(200, 120, 0);
  y-=5;
  fill(255);
  ellipse(x,y,100,100);
  if(y==height/3){
    state=2;
  }
}

void drawScene2() {
  background(120, 0, 200);
  y+=5;
  fill(0);
  ellipse(x,y,100,100);
  if(y==height*2/3){
    state=0;
  }
}
