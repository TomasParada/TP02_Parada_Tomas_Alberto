class Tortuga extends GameObject{
  public Tortuga(){
    this.imagen = loadImage("tortuga.png");
  }
  
  public void display(){
    image(this.imagen, this.posicion.x, this.posicion.y, 60, 60);
  }
}
