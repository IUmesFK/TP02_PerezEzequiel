private Dado[] dado;
private Tablero tablero;
private int contador;
void setup(){
  size(400,400);
  contador = 0;
  dado = new Dado[4];
  tablero = new Tablero(new PVector(width/2,height/2));
}
public void draw(){
    tablero.display();
      for(int i=0; i<contador; i++){
        tablero.display();
        tablero.setDado(dado[i]);
        dado[i].display();
        tablero.mostrarNumero();
    }
}
void keyReleased(){
  if(key == 'i' || key == 'I'){
    if(contador<dado.length){
      println("---- Se ha inicializado el programa ----");
      dado[contador]=new Dado(new PVector(width/2,height/2));
      dado[contador].setNumero(int(random(1,6)));
      contador++;
      for(int i=0; i<contador; i++){
          println("Número del dado: "+dado[i].getNumero());
     }
      }else{
        println(" Ya no hay espacio en la lista, vacie la misma pulsando 'P' en su teclado ");
      }
  }
    if(key == 'p' || key == 'P'){
      for(int i=0; i<contador; i++){
        //dado.remove[i]
        dado[i].setNumero(0);
      }
    contador=0;
    println(" Se vacio la lista ");
  }
}
