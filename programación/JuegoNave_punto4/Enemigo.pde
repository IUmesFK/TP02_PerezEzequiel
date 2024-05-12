class Enemigo extends GameObject implements IDisplayable, IMoveable{
  
  public Enemigo(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
  }
  
  public void display(){
    imagen = loadImage("naveEnemiga.png");
    imageMode(CENTER);
    image(imagen, posicion.x, posicion.y, 80, 80);
  }
  
  public void mover(){
    posicion.x+=velocidad.x;
    if(posicion.x<0 || posicion.x>=width-100){
      velocidad.x*=-1;
    }
  }
}
