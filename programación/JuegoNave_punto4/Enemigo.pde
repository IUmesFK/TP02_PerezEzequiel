class Enemigo extends GameObject implements IDisplayable, IMoveable{
  private int tiempoInicial;
  
  // --- METODO CONSTRUCTOR ---
  
  public Enemigo(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
  }
  
  public void display(){
    imagen = loadImage("enemigo.png");
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 80, 80);
  }
  
  public void mover() {
    int tiempoActual = millis();
    float deltaTime = (tiempoInicial - tiempoActual) / 1000.0;
    posicion.x-=velocidad.x*deltaTime;
    if(posicion.x>width-80) {
      velocidad.x*=-1;
    } else if(posicion.x<80) {
      velocidad.x*=-1;
    }
    tiempoInicial = tiempoActual;
  }
}
