class Tablero extends GameObject{
  private Dado numero;
    Tablero(){
  }
  public Tablero(PVector posicion){
    this.posicion=posicion;
  }
  void setDado(Dado dado){
    this.numero=dado;
  }
  
  void display(){
    fill(#0cb7f2);
    rectMode(CENTER);
    rect(posicion.x,posicion.y,width,height);
  }
   public void mostrarNumero(){
    switch(numero.getNumero()){
      case 1:
        textSize(30);
        fill(0);
        text("uno",this.posicion.x*2-100,50);
        break;
      case 2:        
        stroke(0);
        textSize(30);
        fill(0);
        text("dos",this.posicion.x*2-100,50);
        break;
      case 3:     
        stroke(0);
        textSize(30);
        fill(0);
        text("tres",this.posicion.x*2-100,50);
        break;
      case 4:
      
        stroke(0);
        textSize(30);
        fill(0);
        text("cuatro",this.posicion.x*2-120,50);
        break;
      case 5:
        stroke(0);
        textSize(30);
        fill(0);
        text("cinco",this.posicion.x*2-100,50);
        break;
      case 6:        
        stroke(0);
        textSize(30);
        fill(0);
        text("seis",this.posicion.x*2-100,50);
        break;
      }
    }
}
