float r; 
color[] bgColor=new color[1]; 
String[] s=new String[1];

void setup(){
  size(600, 600); 
  s=loadStrings("color.txt");
  bgColor[0]=int(s[0]);
}

void draw(){
  background(bgColor[0]); 
  text("back ground # : " + bgColor[0], 100, 100); 
}

void mousePressed(){
  bgColor[0] = color(random(0,255), random(0,255), random(0,255)); 
  ellipse(mouseX, mouseY, 50, 50); 
}

void exit(){
  saveStrings("Data/color.txt",str(bgColor));
}
