class Snowflakes{
  //position
  //color
  //opacity
  float x,y;
  color c;
  int o;
  float g;
  float s;
  
  Snowflakes(float _x, float _y){
    x=_x;
    y=_y;
    o=255;
    g=random(1,3);
    s=random(5,15);
  }
  
  //draw
  void display(){
    fill(255,o);
    ellipse(x,y,s,s);
  }
  
  //fall
    //gravity
    //opacity
  void fall(){
    y+=g;
    o--;
  }
  
  //boolean to check if snowflake is still alive
  boolean Alive(){
    if(y<height){
      return true;
    }else{
      return false;
    }
  }
  
}
