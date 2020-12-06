import hype.*;
import hype.extended.behavior.HRotate;

HShape d;

void setup(){
  size(500,500);
  smooth();
  H.init(this).background(#666666).autoClear(false);
  for(int i=0;i<20;i++){
    d = new HShape("bunny.svg");
    int randSize = (int) random(100,225);
    d
    .enableStyle(false)
    .anchorAt(H.CENTER)
    .strokeWeight(5)
    .stroke(#FF3300)
    .fill(#111111,20)
    .loc((int)random(width),(int)random(height))
    .size(randSize);
    HRotate r = new HRotate().target(d).speed((int)random(3,5));
    H.add(d);
  }
}
void draw(){
  d.loc((int)random(width),(int)random(height));
  H.drawStage();
}
