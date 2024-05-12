class Nave implements IDisplayable, IMoveable, IController{
  private PImage jugador1;
  private PImage jugador2;
  private PVector posJugador1;
  private PVector posJugador2;
  private PVector velocidadJug1;
  private PVector velocidadJug2;
  
  /** setters y getters*/
  
  public void setPosicionJugador1(PVector posicionJugador1) {
    this.posJugador1=posicionJugador1;
  }
  
  public PVector getPosicionJugador1() {
    return this.posJugador1;
  }
  
  public void setPosicionJugador2(PVector posicionJugador2) {
    this.posJugador2=posicionJugador2;
  }
  
  public PVector getPosicionJugador2() {
    return this.posJugador2;
  }
  
  public void setVelocidadJugador1(PVector velocidadJugador1) {
    this.velocidadJug1=velocidadJugador1;
  }
  
  public PVector getVelocidadJugador1() {
    return this.velocidadJug1;
  }
  
  public void setVelocidadJugador2(PVector velocidadJugador2) {
    this.velocidadJug2=velocidadJugador2;
  }
  
  public PVector getVelocidadJugador2() {
    return this.velocidadJug2;
  }
  
  // metodos
  
  public void display(){
  
  }
  
  public void mover(){
  }
  
  public void readCommand(){
  
  }
}
