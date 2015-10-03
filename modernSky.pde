PVector direction;
float magnitude;

CubeMatrix cubeMatrix;

void setup() {
  size(846/2, 1504/2, P3D);
  smooth();
  cubeMatrix = new CubeMatrix();
}

void draw() {
  background(0);
  cubeMatrix.display();
  
  if(magnitude>30){
    println(magnitude);
    cubeMatrix.move(magnitude);
  }
  magnitude = 0;
}

void mouseClicked(){
  direction = new PVector(random(0, 100), random(0, 100), random(0, 100));
  direction.normalize();
  magnitude = random(10, 100);
}
