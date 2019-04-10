int cellSize=10;
color colors[][];
int cols, rows;

void setup(){
  size(1000,1000);
  noStroke();
  cols=width/cellSize;
  rows=height/cellSize;
  colors=new color[cols][rows];
  for(int i=0;i<cols;i++){
    for(int j=0;j<rows;j++){
      colors[i][j]=color(0,0,random(100,255));
    }
  }
}

void draw(){
  float inc=.09;
  float xoff=0;
  float yoff=0;
  //int i=cols;i>0;i--
  //int j=rows;j>0;j--
  for(int i=cols-1;i>-1;i--){
    for(int j=rows-1;j>-1;j--){
      //colors[i][j]=color(0,0,random(100,255));
      xoff+=inc;
      yoff+=inc;
      float noiseVal=noise(xoff+millis()*.01,yoff+millis()*.01);
      colors[i][j]=color(map(noiseVal,0,1,0,150),map(noiseVal,0,1,76,255),map(noiseVal,0,1,175,255));
    }
  }
  for(int i=cols-1;i>-1;i--){
    for(int j=rows-1;j>-1;j--){
      fill(colors[i][j]);
      rect((i-1)*cellSize,(j-1)*cellSize,cellSize,cellSize*2);
    }
  }
}
