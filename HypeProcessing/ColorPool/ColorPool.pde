import hype.*;
import hype.extended.behavior.HRotate;
import hype.extended.colorist.HColorPool;
HShape d;
HColorPool colors;

void setup(){
  size(1920,1080);
  smooth();
  colors = new HColorPool(#FFFFFF,#F7F7F7,#ECECEC,#333333,#0095a8,#00616f,#FF3300,#FF6600).fillOnly();
  H.init(this).background(#666666).autoClear(false);
  for(int i=0;i<20;i++){
    d = new HShape("bunny.svg");
    d.enableStyle(false);
    int randomSize = (int) random(100,225);
    d.size(randomSize);
    d.loc((int)random(width),(int)random(height));
    d.randomColors(colors).anchorAt(H.CENTER);
    HRotate r = new HRotate().target(d).speed((int)random(-10,10));
    H.add(d);
  }
}
void draw(){
  d.loc((int)random(width),(int)random(height));
  H.drawStage();
}
