class Shooter {
  PImage imagen;
  PVector posicion;
  float altoImagen;
  float anchoImagen;
  float anguloZ = 0;
  boolean rotarIzquierda = false;
  boolean rotarDerecha = false;
  ArrayList<Bala> balas = new ArrayList<Bala>();

  public Shooter(PVector posicion, float anchoImagen, float altoImagen) {
    this.posicion = posicion;
    this.anchoImagen = anchoImagen;
    this.altoImagen = altoImagen;
    cargarImagen();
  }

  public void cargarImagen() {
    imagen = loadImage("shooter.png"); 
    altoImagen = 98.2;
    anchoImagen = 92; 
  }

  public void dibujar() {
    pushMatrix(); 
    translate(posicion.x, posicion.y); 
    rotate(radians(anguloZ)); 
    imageMode(CENTER);
    image(imagen, 0, 0, anchoImagen, altoImagen); 
    popMatrix(); 
  }
  
  public void actualizarRotacion() {
    float velocidadRotacion = 3;
    if (rotarIzquierda) {
      anguloZ -= velocidadRotacion;
    }
    if (rotarDerecha) {
      anguloZ += velocidadRotacion;
    }
    anguloZ = anguloZ % 360;
    if (anguloZ < 0) {
      anguloZ += 360;
    }
  }

  public void disparar() {
  // Calcúla el punto de disparo desde el centro de la nave hacia el frente de la nave
  float disparoX = cos(radians(anguloZ - 90)) * altoImagen / 2;
  float disparoY = sin(radians(anguloZ - 90)) * altoImagen / 2;
  float xDisparo = posicion.x + disparoX;
  float yDisparo = posicion.y + disparoY;
  Bala nuevaBala = new Bala(xDisparo, yDisparo, anguloZ);
  balas.add(nuevaBala);
}






  public void actualizarBalas() {
    for (int i = balas.size() - 1; i >= 0; i--) {
      Bala bala = balas.get(i);
      bala.actualizar();
      if (bala.posicion.y < 0 || bala.posicion.x < 0 || bala.posicion.x > width || bala.posicion.y > height) {
        balas.remove(i);
      }
    }
  }

  public void dibujarBalas() {
    for (Bala bala : balas) {
      bala.dibujar();
    }
  }
}
