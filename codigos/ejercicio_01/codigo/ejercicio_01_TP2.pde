private Dado dado;

public void setup(){
  size(400,400);
  dado = new Dado();
  //dado.posicion = new PVector (width/2, height/2); //asi no es válido
  dado.setPosicion(new PVector(width/2,height/2)); //eso si es válido
  //dado.lado = 100; //asi no
  dado.setLado(100);
}

public void draw(){
  //background(0);
}

public void keyPressed(){
  if(key == 'a'){
    println("La presionó");
    dado.tirarDado();
    background(0);
    dado.dibujar();
    mostrarValor();
  }
}
  
  public void mostrarValor(){
    String textoAmostrar = "";
    switch(dado.getValor()){
      case 1:{
        textoAmostrar = "uno";
        break;
      }
      case 2:{
        textoAmostrar = "dos";
        break;
      }
      case 3:{
        textoAmostrar = "tres";
        break;
      }
      case 4:{
        textoAmostrar = "cuatro";
        break;
      }
      case 5:{
        textoAmostrar = "cinco";
        break;
      }
      case 6:{
        textoAmostrar = "seis";
        break;
      }
    }
    textSize(40);
    text(textoAmostrar,160,40);
  }
