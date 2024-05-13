class Nave implements IDisplayable, IMoveable, IController{
  private PImage jugador1;
  private PImage jugador2;
  private PVector posJugador1;
  private PVector posJugador2;
  private PVector velocidadJug1;
  private PVector velocidadJug2;
  private boolean moverArriba1, moverAbajo1, moverDerecha1, moverIzquierda1;
  private boolean moverArriba2, moverAbajo2, moverDerecha2, moverIzquierda2;
  private int tiempoInicial;
  private PImage bala;
  private Bala[] balasJug1;
  private Bala[] balasJug2;
  private int indicadorBalas1;
  private int indicadorBalas2;
  
  
  // --- METODO CONSTRUCTOR ---
  
  public Nave(){
    balasJug1 = new Bala[200];
    indicadorBalas1 = 0;
    balasJug2 = new Bala[200];
    indicadorBalas2 = 0;
    tiempoInicial = millis();  
  }
  
  // --- SETTERS Y GETTERS ---
  
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
  
  // --- METODOS ---
  
  public void display(){
    jugador1 = loadImage("naveJug1.png");
    imageMode(CENTER);
    image(jugador1, posJugador1.x, posJugador1.y, 100, 100);
    jugador2 = loadImage("naveJug2.png");
    imageMode(CENTER);
    image(jugador2, posJugador2.x, posJugador2.y, 100, 100);
  }
  
  public void readCommand() {
    if(keyPressed) {
      
      // --- Si el jugador 1 presiona una de las siguientes teclas, el programa las leerá y aplicará el caso correspondiente. ---
      
      if(key=='w' || key=='W') {
        moverArriba1=true;
        moverAbajo1=false;
        moverIzquierda1=false;
        moverDerecha1=false;
      } else if(key=='a' || key=='A') {
        moverIzquierda1=true;
        moverDerecha1=false;
        moverArriba1=false;
        moverAbajo1=false;
      } else if(key=='s' || key=='S') {
        moverAbajo1=true;
        moverArriba1=false;
        moverIzquierda1=false;
        moverDerecha1=false;
      } else if(key=='d' || key=='D') {
        moverDerecha1=true;
        moverIzquierda1=false;
        moverArriba1=false;
        moverAbajo1=false;
      }
      
      // --- Si el jugador 2 presiona una de las siguientes teclas, el programa las leerá y aplicará el caso correspondiente. ---
      
      if(keyCode==UP) {
        moverArriba2=true;
        moverAbajo2=false;
        moverIzquierda2=false;
        moverDerecha2=false;
      } else if(keyCode==LEFT) {
        moverIzquierda2=true;
        moverDerecha2=false;
        moverArriba2=false;
        moverAbajo2=false;
      } else if(keyCode==DOWN) {
        moverAbajo2=true;
        moverArriba2=false;
        moverIzquierda2=false;
        moverDerecha2=false;
      } else if(keyCode==RIGHT) {
        moverDerecha2=true;
        moverIzquierda2=false;
        moverArriba2=false;
        moverAbajo2=false;
      }
    } else {
      moverArriba1=false;
      moverAbajo1=false;
      moverIzquierda1=false;
      moverDerecha1=false;
      moverArriba2=false;
      moverAbajo2=false;
      moverIzquierda2=false;
      moverDerecha2=false;
    }
  }
  
  public void mover() {
    
    int tiempoActual = millis();
    float deltaTime = (tiempoActual - tiempoInicial) / 1000.0;
    
    // --- Según sea el caso, la nave del jugador 1 se moverá a la dirección indicada. ---
    
    if(moverArriba1==true) {
      posJugador1.y-=velocidadJug1.y*deltaTime;
    } else if(moverIzquierda1==true) {
      posJugador1.x-=velocidadJug1.x*deltaTime;
    } else if(moverAbajo1==true) {
      posJugador1.y+=velocidadJug1.y*deltaTime;
    } else if(moverDerecha1==true) {
      posJugador1.x+=velocidadJug1.x*deltaTime;
    }
    
    // --- Según sea el caso, la nave del jugador 2 se moverá a la dirección indicada. ---
    
    if(moverArriba2==true) {
      posJugador2.y-=velocidadJug2.y*deltaTime;
    } else if(moverIzquierda2==true) {
      posJugador2.x-=velocidadJug2.x*deltaTime;
    } else if(moverAbajo2==true) {
      posJugador2.y+=velocidadJug2.y*deltaTime;
    } else if(moverDerecha2==true) {
      posJugador2.x+=velocidadJug2.x*deltaTime;
    }
    
    tiempoInicial = tiempoActual;
  }
  
  public void dispararBalas(Bala[] balasJug1, Bala[] balasJug2){
    if(keyPressed && (key == 'k' || key == 'K')) {
      balasJug1[indicadorBalas1++] = new Bala(new PVector(posJugador1.x, posJugador1.y-80), new PVector(0, 75), bala); // --- Cuando el jugador uno presione la tecla 'K', se dispararan las balas. ---
    }
    
    for(int i=0; i<indicadorBalas1; i++) {
      Bala listaBalas1=balasJug1[i];
      bala = loadImage("bala.png");
      imageMode(CENTER);
      image(bala, listaBalas1.posicion.x, listaBalas1.posicion.y, 50, 50);
      listaBalas1.posicion.y-=listaBalas1.velocidad.y;
      
    }
    
    if(keyPressed && (key == ENTER)) {
      balasJug2[indicadorBalas2++] = new Bala(new PVector(posJugador2.x, posJugador2.y-80), new PVector(0, 75), bala); // --- Cuando el jugador presione la tecla 'Enter', se dispararan las balas. ---
    }
    
    for(int i=0; i<indicadorBalas2; i++) {
      Bala listaBalas2=balasJug2[i];
      bala = loadImage("bala.png");
      imageMode(CENTER);
      image(bala, listaBalas2.posicion.x, listaBalas2.posicion.y, 50, 50);
      listaBalas2.posicion.y-=listaBalas2.velocidad.y;

    }
  }
}
