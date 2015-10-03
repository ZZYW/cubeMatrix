class CubeMatrix {

  int n = 15;
  Cube[][] myCubes = new Cube[n][n];


  CubeMatrix() {
    for (int j=0; j<n; j++) { 
      for (int i=0; i<n; i++) {
        myCubes[i][j] = new Cube(i*90, 0, j*90, 60);
      }
    }
  }

  void display() {
    pushMatrix();
    translate(width/2, height/2+0, -1500);
    rotateY(-PI/4);
    rotateX(-PI/15);
    rotateZ(PI/15);
    for (int j=0; j<n; j++) { 
      for (int i=0; i<n; i++) {
        myCubes[i][j].display();
      }
    }
    popMatrix();
  }

  void move(float tempMagnitude) {
    if (myCubes[n-1][n-1].ypos > -300) {
      myCubes[n-1][n-1].moveUp(tempMagnitude);
    }
  }
}

