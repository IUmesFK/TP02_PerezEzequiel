class Asteroide extends GameObject implements IDisplayable, IMoveable{
  
  // --- METODO CONSTRUCTOR ---
  
  public Asteroide(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
  }
  
  public void display(){
    imagen = loadImage("asteroide.png");
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 60,60);
  }
  public void mover(){
    posicion.y+=velocidad.y;
  }
}
