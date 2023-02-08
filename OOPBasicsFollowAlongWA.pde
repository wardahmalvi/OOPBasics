// global declarations
Particle p1, p2;
int nParticles = 150;
Particle[] allParticles = new Particle[nParticles];
  // int x; he wrote it to show that we are assigning a value to p1
  //similar to how we would assign a variable to x by calling int
  
void setup () {
  size(1000,800);
  initializeParticles();
}

void draw () {
  background(0);
  p1.display();
  p2.display();
  p1.move();
  p2.move();
  p1.checkEdges();
  p2.checkEdges();
  for (int i = 0; i < nParticles; i++){
    allParticles[i].display();
    allParticles[i].move();
    allParticles[i].checkEdges();
  }

}

//customized functions
void initializeParticles() {
  p1 = new Particle();
  p2 = new Particle(color(250, 0, 0));
  for (int i = 0; i < nParticles; i++){
    allParticles[i] = new Particle();
  }
}

//event handlers
