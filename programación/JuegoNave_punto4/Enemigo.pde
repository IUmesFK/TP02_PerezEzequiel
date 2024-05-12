class Enemigo extends GameObject implements IDisplayable, IMoveable{
  private int tiempoInicial;
  
  // --- METODO CONSTRUCTOR ---
  
  public Enemigo(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
  }
  
  public void display(){
    imagen = loadImage("naveEnemigo.png");
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 150, 150);
  }
  
  public void mover() {
    
       
    
    /* decidi cambiar este fragmento de código pq senti que el movimiento era muy rápido, asi que lo cambie por lo de abajo,
    
    posicion.x+=velocidad.x;
    if(posicion.x<150 || posicion.x>=width){
      velocidad.x*=-1;
    }
    
    */
      
    
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
