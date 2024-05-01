ArrayList<Tronco> troncos;
ArrayList<Tortuga> tortugas;
ArrayList<Auto> autos;
ArrayList<Auto2> autos2;
Frogger frogger;
PImage imgTronco, imgTortuga, imgAuto, imgAuto2, backgroundImage;;
int tiempoUltimoTronco, tiempoUltimaTortuga, tiempoUltimoAuto, tiempoUltimoAuto2;

void setup() {
  size(516, 504);
  imgTronco = loadImage("tronco.png");
  imgTortuga = loadImage("tortuga.png");
  imgAuto = loadImage("car1.png");
  imgAuto2 = loadImage("car2.png");
  backgroundImage = loadImage("frogger_background.png");
  frogger = new Frogger();
  frogger.setPosicion(new PVector(width/2, 468));
  troncos = new ArrayList<Tronco>();
  tortugas = new ArrayList<Tortuga>();
  autos = new ArrayList<Auto>();
  autos2 = new ArrayList<Auto2>();
  tiempoUltimoTronco = tiempoUltimaTortuga = millis();
}

void draw() {
  background(backgroundImage);
  frogger.display();
  manejarTroncos();
  manejarTortugas();
  manejarAutos();
  manejarAutos2();
}

void manejarTroncos() {
  int tiempoActual = millis();
  if (tiempoActual - tiempoUltimoTronco > 2000) {
    float[] posicionesY = {70,150};
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
    float[] posicionesY = {120,210};
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

void manejarAutos() {
  int tiempoActual = millis();
  if (tiempoActual - tiempoUltimoAuto > 2500) {
    float[] posicionesY = {320};
    int indexY = int(random(posicionesY.length));
    float posY = posicionesY[indexY];
    float posX = width + 100;
    float velocidad = -2;

    Auto nuevoAuto = new Auto(imgAuto, posX, posY, velocidad, 100, 30);
    autos.add(nuevoAuto);
    tiempoUltimoAuto = tiempoActual;
  }

  for (Auto auto : autos) {
    auto.mover();
    auto.display();
    if (auto.posicion.x < -150) {
     // tortugas.remove(tortuga); //comentado por el error ConcurrentModificationException
    }
  }
}

void manejarAutos2() {
  int tiempoActual = millis();
  if (tiempoActual - tiempoUltimoAuto2 > 2500) {
    float[] posicionesY = {400};
    int indexY = int(random(posicionesY.length));
    float posY = posicionesY[indexY];
    float posX = -150;
    float velocidad = 2;

    Auto nuevoAuto = new Auto(imgAuto2, posX, posY, velocidad, 100, 30);
    autos.add(nuevoAuto);
    tiempoUltimoAuto2 = tiempoActual;
  }

  for (Auto auto : autos) {
    auto.mover();
    auto.display();
    if (auto.posicion.x > width + 150) {
     // tortugas.remove(tortuga); //comentado por el error ConcurrentModificationException
    }
  }
}
