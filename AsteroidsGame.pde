Spaceship bob = new Spaceship();
Star[] craig = new Star[1000];
public void setup(){
  size(1000, 1000);
  background(0);
  for(int i = 0; i < craig.length; i++){
    craig[i] = new Star();
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < craig.length; i++){
    craig[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  if(key == 'w'){
    bob.accelerate(Math.cos(100));
  } else if(key == 's'){
    bob.stopship();
  } else if(key == 'a'){
    bob.turn(-20);
  } else if(key == 'd'){
    bob.turn(20);
  } else if(key == 'e'){
    bob.hyperspace();
  }
}
