
void setup() {
  size(500, 500);  //feel free to change the size
  background(#F1E6FA);
  frameRate(2);
  
}
void draw() {
  boolean shift = false;
  for (int r = -50; r<=500; r+=39) {
    for (int c = -50; c<=500; c+=23) {
      if (shift == false) {
        scale(c, r);
      } else
        scale(c+3, r);
    }
    if(shift == false){
      shift = true;
    } else
      shift = false;
     
  }
}

void scale(int x, int y) {
  int ran1 = (int)(Math.random()*240)+130;
  int ran2 = (int)(Math.random()*240)+130;
  int ran3 = (int)(Math.random()*240)+130;
  stroke(0);
  fill(ran1,ran2,ran3);
  //original
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+10, y+30);
  curveVertex(x+40, y+40);
  curveVertex(x+30, y+10);
  curveVertex(x, y);
  curveVertex(x, y);
  endShape();
  fill(ran3,ran2,ran1);
  //second largest
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+5, y+25);
  curveVertex(x+30, y+30);
  curveVertex(x+25, y+5);
  curveVertex(x, y);
  curveVertex(x, y);
  endShape();
  //third
  fill(ran2,ran1,ran3);
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+5, y+20);
  curveVertex(x+25, y+25);
  curveVertex(x+20, y+5);
  curveVertex(x, y);
  curveVertex(x, y);
  endShape();
  //fourth (smallest on top)
  fill(ran3,ran1,ran2);
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+5, y+15);
  curveVertex(x+20, y+20);
  curveVertex(x+15, y+5);
  curveVertex(x, y);
  curveVertex(x, y);
  endShape();
}
