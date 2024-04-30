ArrayList<Tronco> troncos;
ArrayList<Tortuga> tortugas;
Frogger frogger;
PImage imgTronco, imgTortuga;
int tiempoUltimoTronco, tiempoUltimaTortuga;

void setup() {
  size(600, 600);
  imgTronco = loadImage("tronco.png");
  imgTortuga = loadImage("tortuga.png");
  frogger = new Frogger();
  frogger.setPosicion(new PVector(width/2, 550));
  troncos = new ArrayList<Tronco>();
  tortugas = new ArrayList<Tortuga>();
  tiempoUltimoTronco = tiempoUltimaTortuga = millis();
}

void draw() {
  background(#3C43F0);
  frogger.display();
  manejarTroncos();
  manejarTortugas();
}

void manejarTroncos() {
  int tiempoActual = millis();
  if (tiempoActual - tiempoUltimoTronco > 2000) {
    float[] posicionesY = {150, 300, 450};
    int indexY = int(random(posicionesY.length));
    float posY = posicionesY[indexY];
    float posX = -150;
    float velocidad = 2;

    Tronco nuevoTronco = new Tronco(imgTronco, posX, posY, velocidad, 150, 40);
    troncos.add(nuevoTronco);
    tiempoUltimoTronco = tiempoActual;
  }

  for (Tronco tronco : troncos) {
    tronco.mover();
    tronco.display();
    if (tronco.posicion.x > width + 150) {
      //troncos.remove(tronco); //comentado por el error ConcurrentModificationException

    }
  }
}

void manejarTortugas() {
  int tiempoActual = millis();
  if (tiempoActual - tiempoUltimaTortuga > 2500) {
    float[] posicionesY = {90, 210, 360};
    int indexY = int(random(posicionesY.length));
    float posY = posicionesY[indexY];
    float posX = width + 100;
    float velocidad = -2;

    Tortuga nuevaTortuga = new Tortuga(imgTortuga, posX, posY, velocidad, 100, 30);
    tortugas.add(nuevaTortuga);
    tiempoUltimaTortuga = tiempoActual;
  }

  for (Tortuga tortuga : tortugas) {
    tortuga.mover();
    tortuga.display();
    if (tortuga.posicion.x < -150) {
     // tortugas.remove(tortuga); //comentado por el error ConcurrentModificationException
    }
  }
}
