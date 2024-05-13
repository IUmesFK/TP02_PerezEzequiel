class SpawnerVehiculo{
  private Vehiculo[] vehiculos;
  private int indiceVehiculos;
  private int tiempoTranscurrido;
  private int tiempoAparicion;
  private int contFrames;
  
  public SpawnerVehiculo(){
    vehiculos = new Vehiculo[10];
    indiceVehiculos = 0;
    tiempoTranscurrido = 0;
    tiempoAparicion = 500;
    contFrames = round(frameRate);
  }
  
  public void mostrarVehiculos(Vehiculo[] vehiculos){
    float deltaTime = 1.0/contFrames;
    tiempoTranscurrido += deltaTime * 1600;
      if(tiempoTranscurrido >= tiempoAparicion && indiceVehiculos < vehiculos.length){
        tiempoTranscurrido = 0;
        if(indiceVehiculos == 0){
          vehiculos[indiceVehiculos++] = new Vehiculo(new PVector(width, random(440, 540)), new PVector(350*deltaTime, 0));
        }
      }    
        for (int i = 0; i < indiceVehiculos; i++){
          Vehiculo listVehiculos = vehiculos[i];
          noStroke();
          fill(#eeca06);
          rect(listVehiculos.posicion.x, listVehiculos.posicion.y, 60, 20);
          listVehiculos.posicion.x -= listVehiculos.velocidad.x;
          if(listVehiculos.posicion.x <0){
            for (int j=i; j<indiceVehiculos - 1; j++){
              vehiculos[j] = vehiculos[j+1];
            }
            indiceVehiculos--;
            i--;
          }
       }
        
    }
}
