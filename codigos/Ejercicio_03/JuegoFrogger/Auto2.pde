class Auto2 {
  PVector posicion; 
  float velocidad;  
  PImage imagen;    
  float ancho;      
  float alto;       

  Auto2(PImage img, float x, float y, float velocidad, float ancho, float alto) {
    this.imagen = img;
    this.posicion = new PVector(x, y);
    this.velocidad = velocidad;
    this.ancho = ancho;
    this.alto = alto;
  }

  void mover() {
    posicion.x += velocidad;
  }

  void display() {
    image(imagen, posicion.x, posicion.y, ancho, alto);
  }
}
