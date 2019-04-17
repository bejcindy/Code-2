String currentString="o";
int generations=0;

void setup(){
  
}

void draw(){
  
}

void mousePressed(){
  String nextString="";
  
  for(int i=0;i<currentString.length();i++){
    char c=currentString.charAt(i);
    //write out our rules
    if(c=='o'){
      nextString+="oh";
    }else if(c=='h'){
      nextString+=" no!";
    }
  }
  currentString=nextString;
  generations++;
  println("Generations: "+generations+" : "+currentString);
}
