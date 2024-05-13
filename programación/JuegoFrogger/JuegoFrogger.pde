Jugador jugador;

void setup(){
  size(800,800);
  jugador = new Jugador(new PVector(width/2, height-100), new PVector(0,0));
}

void draw(){
  background(#191970);
  jugador.display();
  noStroke();
  fill(#393d42);
  rect(0,height/2, width, 200);
  stroke(255);
  strokeWeight(5);
  line(0, (height/2)+100, width, (height/2)+100);
}
