public class Dado extends GameObject{
  private int numeroDado;
  public Dado(PVector posicion){
    this.posicion=posicion;
  }
  public int getNumero(){
    return this.numeroDado;
  }
  
  public void setNumero(int num){
    this.numeroDado=num;
  }

   public void display(){
    fill(#FFA333);
    rectMode(CENTER);
    rect(this.posicion.x,this.posicion.y,150,150);   
    switch(numeroDado){
      case 1:
        fill(0);
        circle(this.posicion.x,this.posicion.y,30);
        stroke(0);
         break;
      case 2:
        for(int i=30; i<=60; i+=30){
          fill(0);
          circle(this.posicion.x+i-45,this.posicion.y+i-46,30);
        }
        stroke(0);
        break;
      case 3:
      for(int i=0; i<=60; i+=30){
        fill(0);
          circle(CENTER+this.posicion.x+i-30,CENTER+this.posicion.y+i-30,30);
        }
        stroke(0);
       break;
      case 4:
      for(int i=40; i<=80; i+=40){
        fill(0);
          circle(this.posicion.x+20,CENTER+this.posicion.y+i-62,30);
          circle(this.posicion.x-20,CENTER+this.posicion.y+i-62,30);  
        }
        stroke(0);
        break;
      case 5:
        for(int i=50; i<=100; i+=50){
          fill(0);
          circle(this.posicion.x+30,CENTER+this.posicion.y+i-77,30);
          circle(this.posicion.x-30,CENTER+this.posicion.y+i-77,30);  
        }
        circle(this.posicion.x,this.posicion.y,30);
        stroke(0);
       break;
      case 6:
        for(int i=40; i<=120; i+=40){
          fill(0);
          circle(this.posicion.x+20,CENTER+this.posicion.y+i-85,30);
          circle(this.posicion.x-20,CENTER+this.posicion.y+i-85,30);  
        }
        stroke(0);
       break;
    }
  }
}
