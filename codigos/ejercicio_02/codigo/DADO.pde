class Dado{

  //los atributos
  private int valor;
  private int lado;
  private PVector posicion;

//los constructores
  public Dado(){
  }

//los mpetodos comunes
  public void dibujar(){
    rectMode(CENTER);
    strokeWeight(1);
    square(this.posicion.x, this.posicion.y, this.lado);
    switch(this.valor){
      case 1:{
        strokeWeight(15);
        point(this.posicion.x, this.posicion.y);
        break;
      }
      case 2:{
        strokeWeight(15);
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y + (this.lado/2) - 20);
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y - (this.lado/2) + 20);
        break;
      }
      case 3:{
        strokeWeight(15);
        point(this.posicion.x, this.posicion.y);  // Centro
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y + (this.lado/2) - 20);  // Esquina superior izquierda
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y - (this.lado/2) + 20);  // Esquina inferior derecha
        break;
      }
      case 4: {
        strokeWeight(15);
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y + (this.lado/2) - 20);  // Esquina superior izquierda
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y + (this.lado/2) - 20);  // Esquina superior derecha
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y - (this.lado/2) + 20);  // Esquina inferior izquierda
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y - (this.lado/2) + 20);  // Esquina inferior derecha
        break;
      }
      case 5: {
        strokeWeight(15);
        point(this.posicion.x, this.posicion.y);  // Centro
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y + (this.lado/2) - 20);  // Esquina superior izquierda
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y + (this.lado/2) - 20);  // Esquina superior derecha
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y - (this.lado/2) + 20);  // Esquina inferior izquierda
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y - (this.lado/2) + 20);  // Esquina inferior derecha
        break;
      }
      case 6: {
        strokeWeight(15);
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y + (this.lado/3));  // Superior izquierda
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y + (this.lado/3));  // Superior derecha
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y);  // Centro izquierda
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y);  // Centro derecha
        point(this.posicion.x - (this.lado/2) + 20, this.posicion.y - (this.lado/3));  // Inferior izquierda
        point(this.posicion.x + (this.lado/2) - 20, this.posicion.y - (this.lado/3));  // Inferior derecha
        break;
        }
    }
  }

  public void tirarDado(){
    this.valor = int (random(1,7));
  }


//los métodos accesores(getters y setters)
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }

  public void setLado(int lado){
    this.lado = lado;
  }
  
  public int getValor(){
    return this.valor;
  }

}
