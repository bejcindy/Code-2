int n=10;//refer to the number of rows & columns
color c [][];
boolean b [][];
int s;

void setup(){
  size(600,600);
  noStroke();
  s=width/n;
  
  c=new color[n][n];
  b=new boolean[n][n];
  
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++){
      c[i][j]=color(random(0,255),random(0,255),random(0,255));
      b[i][j]=false;
    }
  }
}

void draw(){
  for(int i=0;i<n;i++){
    for(int j=0;j<n;j++){
      if(i*s<mouseX && mouseX<(i+1)*s && j*s<mouseY && mouseY<(j+1)*s && mousePressed){
        b[i][j]=true;
      }
      if(b[i][j]){
        fill(c[i][j]);
      }
      if(b[i][j]==false){
        fill(255);
      }
      rect(i*s,j*s,s,s);
    }
  }
}
