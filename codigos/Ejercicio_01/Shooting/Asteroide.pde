class Asteroide {
  PVector posicion;
  PVector velocidad;
  float anchoImagen;
  float altoImagen;
  PImage imagen;

  public Asteroide(PVector posicion, float ancho, float alto, PVector velocidad) {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.anchoImagen = ancho;
    this.altoImagen = alto;
    imagen = loadImage("asteroide.png");
  }

  public void mover() {
    posicion.add(velocidad);
    if (posicion.y > height) {
      posicion.y = 0;
      posicion.x = random(width);
    }
  }

  public void dibujar() {
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, anchoImagen, altoImagen);
  }
}
