PImage fondo;
int cantAsteroides;
int tiempoAst;
Nave jugadores;
Enemigo enemigo1;
Enemigo enemigo2;
Asteroide[] asteroides;

public void setup(){
  frameRate(60);
  size(800,800);
  fondo = loadImage("fondoEspacio.jpg");
  jugadores = new Nave();
  enemigo1 = new Enemigo(new PVector(200, 100), new PVector(100,0));
  enemigo2 = new Enemigo(new PVector(width-200, 250), new PVector(100,0));
  jugadores.setPosicionJugador1(new PVector((width/2)/2, height/2));
  jugadores.setVelocidadJugador1(new PVector(125,125));
  jugadores.setPosicionJugador2(new PVector(width-200, height/2));
  jugadores.setVelocidadJugador2(new PVector(100,100));
  asteroides = new Asteroide[6];
  cantAsteroides = 0;
}

public void draw(){
  imageMode(CENTER);
  image(fondo, width/2, height/2, width, height);
  jugadores.display();
  jugadores.mover();
  jugadores.readCommand();
  enemigo1.display();
  enemigo1.mover();
  enemigo2.display();
  enemigo2.mover();
  
  if(millis() - tiempoAst >= 1500 && cantAsteroides < 6) {
    tiempoAst = millis();
    asteroides[cantAsteroides++] = new Asteroide(new PVector(random(30, width-30), 0), new PVector(0, 20));
  }
  
  for(int i=0; i<cantAsteroides; i++) {
    Asteroide asteroide = asteroides[i];
    asteroide.display();
    asteroide.mover();
    if(asteroide.posicion.y>height+80) {
      for(int j=i; j<cantAsteroides-1; j++) {
        asteroides[j] = asteroides [j+1];
      }
      cantAsteroides--;
      i--;
    }
  }
}
