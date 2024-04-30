class GameObject{
  protected PVector posicion;
  protected PImage imagen;
  
  public void display(){
    image(this.imagen, this.posicion.x, this.posicion.y,45,45);
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
}
