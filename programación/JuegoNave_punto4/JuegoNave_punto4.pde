PImage fondo;
int cantAsteroides;


public void setup(){
  size(800,800);
  fondo = loadImage("fondoEspacio.jpg");
}

public void draw(){
  imageMode(CENTER);
  image(fondo, width/2, height/2);
  
}
