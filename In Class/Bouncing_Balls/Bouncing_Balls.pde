//Ball[] balls={new Ball(100,100,random(40,60)),new Ball(600,600,random(50,80))};
int n=10;

Ball[] myBalls;

void setup(){
  size(700,700);
  
  myBalls=new Ball[n];
  for(int i=0;i<n;i++){
    myBalls[i]=new Ball(50+i*100,50+i*100,random(20,50));
  }
}

void draw(){
  background(145,112,247);
  
  for(Ball b: myBalls){
    b.update();
    b.display();
    b.checkBound();
    b.checkCol(myBalls);
  }
  //for(int i=0;i<n-1;i++){
  //  myBalls[i].checkCol(myBalls);
  //}
  //myBalls[0].checkCol(myBalls[1]);
  
}
