Shooter nave2;
Asteroide[] asteroides;

public void setup() {
  size(800, 800);
  PVector posicionInicial = new PVector(width / 2, height / 2);
  nave2 = new Shooter(posicionInicial, 92, 98.2);

  asteroides = new Asteroide[10];
  for (int i = 0; i < asteroides.length; i++) {
    asteroides[i] = generateAsteroide();
  }
}

Asteroide generateAsteroide() {
  PVector posAst;
  PVector velAst;
  float edge = random(4);
  if (edge < 1) {
    posAst = new PVector(random(width), 0);
    velAst = new PVector(random(-1, 1), random(0.5, 1.5));
  } else if (edge < 2) {
    posAst = new PVector(width, random(height));
    velAst = new PVector(random(-1.5, -0.5), random(-1, 1));
  } else if (edge < 3) {
    posAst = new PVector(random(width), height);
    velAst = new PVector(random(-1, 1), random(-1.5, -0.5));
  } else {
    posAst = new PVector(0, random(height));
    velAst = new PVector(random(0.5, 1.5), random(-1, 1));
  }
  return new Asteroide(posAst, 60, 60, velAst);
}

public void draw() {
  background(0);
  nave2.actualizarRotacion();
  nave2.actualizarBalas();
  nave2.dibujar();
  nave2.dibujarBalas();
  
  // Dibujo del movimiento de los asteroides, y regeneración de los mismos
  for (int i = asteroides.length - 1; i >= 0; i--) {
    asteroides[i].dibujar();
    asteroides[i].mover();
    if (asteroides[i].posicion.y > height || asteroides[i].posicion.y < 0 || 
        asteroides[i].posicion.x > width || asteroides[i].posicion.x < 0) {
      asteroides[i] = generateAsteroide();
    }
    
    for (int j = nave2.balas.size() - 1; j >= 0; j--) {
      if (asteroides[i].posicion.dist(nave2.balas.get(j).posicion) < (asteroides[i].anchoImagen / 2 + 2)) {
        nave2.balas.remove(j);
        asteroides[i] = generateAsteroide();
        break;
      }
    }
  }
}

public void keyPressed() {
  if (key == 'a') {
    nave2.rotarIzquierda = true;
  }
  if (key == 'd') {
    nave2.rotarDerecha = true;
  }
  if (key == ' ') {
    nave2.disparar();
  }
}

public void keyReleased() {
  if (key == 'a') {
    nave2.rotarIzquierda = false;
  }
  if (key == 'd') {
    nave2.rotarDerecha = false;
  }
}
