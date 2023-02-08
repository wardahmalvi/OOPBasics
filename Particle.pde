class Particle { // blueprint - template for one object of that class
                 // classes are user defined data types
  //properties - characteristics of an object
  float xPosit;
  float yPosit;
  float xSpd;
  float ySpd;
  color c;
  
  //constructors - creates and sets the initial state of new objects
  //you may have as many constructors as you need to so long as they
  //have different signatures
  Particle () { //default constructor - no arguments
    xPosit = width/2;
    yPosit = height/2;
    xSpd = random(-3,3);
    ySpd = random(-3,3);
    c = color(random(255),random(255),random(255));
  } 
  
  Particle (color newC) { //overloaded constructor - passes in argument
    xPosit = width/2;
    yPosit = height/2;
    xSpd = random(-3,3);
    ySpd = random(-3,3);
    c = newC;
  }
  
  Particle (float nx, float ny) { //overloaded constructor
    xPosit = nx;
    yPosit = ny;
    xSpd = random(-3,3);
    ySpd = random(-3,3);
    c= color(random(255),random(255),random(255));
  
  }
    
  //methods - behaviors of the objects
  void display(){
    fill(this.c);
    ellipse(this.xPosit, this.yPosit, 25, 25);
    text("Coord: " + xPosit + " " + yPosit, this.xPosit+30, this.yPosit+10);
   //text("Speed: " + xSpd + " " + ySpd, this.xPosit+30, this.yPosit+10); 
  }
  
  void move(){
    this.xPosit = this.xPosit + this.xSpd;
    this.yPosit = this.yPosit + this.ySpd;
  }
  
  void checkEdges(){
  if (this.xPosit < 0 || this.xPosit > width){
    this.xSpd *= -1;
  }
  if (this.yPosit < 0 || this.yPosit > height){
    this.ySpd *= -1;
    }
  }
  
}
