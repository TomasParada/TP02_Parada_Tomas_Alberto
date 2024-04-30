Frogger frogger;
Tortuga tortuga;
Tronco tronco;

public void setup(){
  size (600,600);
  frogger = new Frogger();
  frogger.setPosicion(new PVector(100,100));
  tortuga = new Tortuga();
  tortuga.setPosicion(new PVector(width/2, height/2));
  tronco = new Tronco();
  tronco.setPosicion(new PVector(300,100));
  tronco.setAlto(60);
  tronco.setAncho(100);
}

public void draw(){
  background(0);
  frogger.display();
  tortuga.display();
  tronco.display();
}
