class Jugador extends GameObject{

  public Jugador(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
  }
  
  public void display(){
    noStroke();
    fill(#66bb6a);
    circle(posicion.x, posicion.y, 40);
  }
  
}
