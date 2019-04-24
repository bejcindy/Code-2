PShape sun, planet1, planet2; 
PImage sunText, planet1Text, planet2Text; 
//Stars s;
int n=100;
//ArrayList <Stars> myStar;
Stars[] stars=new Stars[100];

void setup(){
  fullScreen(P3D); 
  
  //s=new Stars(random(0,width),random(0,height),random(-100,100));
  //myStar=new ArrayList<Stars>();
  
  for(int i=0;i<n;i++){
    stars[i]=new Stars(random(0,width),random(0,height),random(-100,100));
  }
  
  sunText = loadImage("sun.jpeg"); 
  planet1Text = loadImage("earth.jpg");
  planet2Text = loadImage("jupiter.jpg"); 
  
  fill(225); 
  noStroke(); 
  
  sun = createShape(SPHERE, 200); 
  sun.setTexture(sunText); 
  
  planet1 = createShape(SPHERE, 100); 
  planet1.setTexture(planet1Text); 
  
  planet2 = createShape(SPHERE, 50); 
  planet2.setTexture(planet2Text);
}

void draw(){
  background(0); 
  pushMatrix(); 
  translate(width/2, height/2, -250); //translate the sun
    
    pushMatrix(); //set s new coordinate system for our canvas 
    rotateY(PI * frameCount / 1000); 
    shape(sun); 
    popMatrix(); 
    
    rotateY(PI * frameCount / 600); 
    translate(0, 0, 500); 

    shape(planet1); 
    pushMatrix(); 
      rotateY(PI * frameCount / 300); 
    translate(0, 0, 200); 
    shape(planet2); 
    popMatrix(); 
  popMatrix(); 
  for(Stars stars:stars){
    for(int i=0;i<n;i++){
      stars.display();
    }
  }
  //translate(.75*width, .6 * height, 50); 

//homework make rotations more realistic 
//create a starfield using classes of spheres, and arrays 
//think about adding point lights/ spotlights 
}
