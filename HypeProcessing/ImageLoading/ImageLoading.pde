import hype.*;
import hype.extended.behavior.HRotate;
HImage d;
void setup(){
  size(600,600);
  H.init(this);
  for(int i=0;i<100;i++){
    d = new HImage("deadmau5.png");
    H.add(d);
  }
  H.drawStage();
}
