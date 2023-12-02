Spaceship bob = new Spaceship();
Star[] craig = new Star[1000];
ArrayList<Asteroid> steve = new ArrayList<Asteroid>();
public void setup(){
  size(1000, 1000);
  background(0);
  for(int i = 0; i < craig.length; i++){
    craig[i] = new Star();
  }
  for(int i = 0; i < 5; i++){
    steve.add(new Asteroid((int)(Math.random()*950)+25, (int)(Math.random()*950)+25));
  }
}
public void draw(){
  background(0);
  for(int i = 0; i < craig.length; i++){
    craig[i].show();
  }
  bob.show();
  bob.move();
  for(int i = 0; i < steve.size(); i++){
    steve.get(i).show();
    steve.get(i).move();
    if(dist((float)bob.getX(), (float)bob.getY(), (float)steve.get(i).getX(), (float)steve.get(i).getY()) < 1){
      steve.remove(i);
    }
  }
}
public void keyPressed(){
  if(key == 'w'){
    bob.accelerate(1.8221);
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
