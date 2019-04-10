String text="Good evening ladies and gentlemen we love coding so much!";
int n=3;
//String ngrams[];
ArrayList<String> ngrams=new ArrayList<String>();
int gramCounter;

void setup(){
  int ngramSize=text.length()/n;
  
  //ngrams=new String[ngramSize];
  
  for(int i=0;i<text.length()-1;i+=3){
    String gram=text.substring(i,i+3);
    //substring(startPlace,endPlace), cuting chunks of 3 characters
    
    if(!ngrams.contains(gram)){
      gramCounter=1;
    }else{
      gramCounter++;
    }
    ngrams.add(gram);
    println(gram,gramCounter,'\n');
    
    //ngrams[i]=gram;
    //println(ngrams[i]);
  }
}
