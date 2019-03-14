int sceneNumber=0;

void setup(){
  size(600,600);
}

void draw(){
  switch(sceneNumber){
    case 0:
      scene0();
    break;
    
    case 1:
      scene1();
    break;
    
    case 2:
      scene2();
    break;
    
    case 3:
      scene3();
    break;
    
    case 4:
      sceneNumber=0;
    break;
  }
}

void mousePressed(){
  sceneNumber++;
  println(sceneNumber);
}

void scene0(){
  background(255,0,0);
}

void scene1(){
  background(0,255,0);
}

void scene2(){
  background(0,0,255);
}

void scene3(){
  background(100,100,100);
}
