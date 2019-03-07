Table table;

int numRows;
int largestHigh, smallestHigh;
int largestLow, smallestLow;

void setup(){
  size(displayWidth,displayHeight);
  table = loadTable("nyWeather.csv", "header");
  numRows = table.getRowCount();
  int[] year=new int[numRows];
  int[] high=new int[numRows];
  int[] low=new int[numRows];
  int[] yearMap=new int[numRows];
  int[] highMap=new int[numRows];
  int[] lowMap=new int[numRows];

  for(int i=0;i<numRows;i++){
    //getInt(row,column)
    year[i]=table.getInt(i,0);
    low[i]=table.getInt(i,1);
    high[i]=table.getInt(i,2);
  }
}
