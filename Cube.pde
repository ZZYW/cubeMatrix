class Cube {
  float xpos;
  float ypos;  
  float zpos;
  float size = 60;
  boolean isTracing = false;
  boolean isReturning = false;

  Cube(float tempXpos, float tempYpos, float tempZpos, float tempSize) {
    xpos = tempXpos;
    ypos = tempYpos;
    zpos = tempZpos;
    size = tempSize;
  }

  void display() {
    pushMatrix();
    translate(xpos, ypos, zpos);
    fill(0);
    stroke(255, 100);
    box(size, size*10, size);
    popMatrix();
  }

  void moveUp(float tempMagnitude) {
    float target = -tempMagnitude;
    if (ypos > target) {
        isTracing  = true;
    }
     
    if(isTracing){
       ypos = ypos - 1;
    }
  }

  void moveDown() {
    ypos = ypos + 1;
  }
}

