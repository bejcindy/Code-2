ArrayList<Squares> squares;
ArrayList<Action> action;


void setup(){
  size(800,800);
  noStroke();
  squares=new ArrayList<Squares>();
  action=new ArrayList<Action>();
}

void draw(){
  background(255);
  for(int i=0; i<squares.size();i++){
    Squares q=squares.get(i);
    Action a=action.get(i);
    a.fall();
    a.spin();
    q.display();
    if(q.y>=(height-q.size/2)){
      q.bounce();
    }
    if(q.x>=(width-q.size/2)||q.x<=q.size/2){
      q.sideBounce();
    }
    if(q.y<0){
      squares.remove(i);
      action.remove(i);
    }
  }
}

void mousePressed(){
  squares.add(new Squares());
  action.add(new Action());
}
