int[] x=new int[0];
int[] y=new int[0];

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  String[] position=new String[x.length];
  position=loadStrings("lines.txt");
  for(int i=0;i<x.length;i++){
    ellipse(x[i],y[i],100,100);
    
    //println("x: "+x[i]+"y: "+y[i]);
    println(position[i]);
  }
}

void mousePressed(){
  x=append(x,mouseX);
  y=append(y,mouseY);
}

void keyPressed(){
  if(key=='s'){
    String[] lines=new String[x.length];
    
    for(int i=0;i<x.length;i++){
      lines[i]=x[i]+"\t"+y[i];
    }
    
    saveStrings("lines.txt",lines);
    exit();
  }
}
