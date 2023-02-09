// Aryan Singh
//  

ArrayList<FireWork> fireworks;
PVector gravity = new PVector(0, 0.2);

void setup() {
  size(640, 360);
  fireworks  = new ArrayList<FireWork>();
  colorMode(HSB);
  background(51);
}

void draw() {
  if(random(1) < 0.08) { 
    fireworks.add(new FireWork());
  }
  fill(51, 50);
  noStroke();
  rect(0, 0, width, height);
  //background(255, 20);
  
  for (int i = fireworks.size()-1; i >= 0; i--) {
    FireWork f = fireworks.get(i);
    f.run();
    if (f.done()) {
      fireworks.remove(i);
    }
  }
}
