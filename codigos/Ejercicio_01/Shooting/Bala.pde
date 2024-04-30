class Bala {
  PVector posicion;
  PVector velocidad;

  public Bala(float x, float y, float anguloNave) {
    posicion = new PVector(x, y);
    float anguloDisparo = anguloNave - 90;
    float velocidadX = cos(radians(anguloDisparo)) * 10;
    float velocidadY = sin(radians(anguloDisparo)) * 10;
    velocidad = new PVector(velocidadX, velocidadY);
  }

  public void actualizar() {
    posicion.add(velocidad);
  }

  public void dibujar() {
    stroke(255);
    strokeWeight(4);
    point(posicion.x, posicion.y);
  }
}
