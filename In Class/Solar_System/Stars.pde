class Stars{
  float x,y,z;
  
  Stars(float _x,float _y,float _z){
    x=_x;
    y=_y;
    z=_z;
  }
  
  void display(){
    pointLight(255,255,255,x,y,z);
  }
}
