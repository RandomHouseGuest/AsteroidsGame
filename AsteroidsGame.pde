Spaceship bob = new Spaceship();
Star[] craig = new Star[1000];
ArrayList<Asteroid> steve = new ArrayList<Asteroid>();
ArrayList<Missle> joe = new ArrayList<Missle>();
int i = 0;
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
    float distance = dist((float)bob.getX(), (float)bob.getY(), (float)steve.get(i).getX(), (float)steve.get(i).getY());
    if(distance < 15){
      steve.remove(i);
    }
  }
  for(int i = 0; i < joe.size(); i++){
    joe.get(i).show();
    joe.get(i).move();
    float distance = dist((float)joe.get(i).getX(), (float)joe.get(i).getY(), (float)steve.get(i).getX(), (float)steve.get(i).getY());
    if(distance < 15){
      steve.remove(i);
    }
    if(joe.size() > steve.size()){
      joe.remove(i);
    }
  }
  if(steve.size() == 0){
    bob.stopship();
    text("GAME OVER", 500, 500);
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
  } else if(key == 'q'){
    joe.add(new Missle(bob));
  }
}
