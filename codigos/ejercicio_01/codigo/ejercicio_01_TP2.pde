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
    println("La presiono");
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
    }
    textSize(40);
    text(textoAmostrar,100,20);
  }
