class SpawnerVehiculos {
  ArrayList<Vehiculo> vehiculos;
  
  SpawnerVehiculos() {
    vehiculos = new ArrayList<Vehiculo>();
  }
  
  void generarVehiculos() {
   
    vehiculos.add(new Auto(0, height-40, random(1, 3)));
    vehiculos.add(new Camion(width, height-80, random(1.5, 2.5)));
    vehiculos.add(new Tronco(0, height-120, random(0.5, 1)));
  }
  
  void moverVehiculos() {
   
    for (Vehiculo v : vehiculos) {
      v.mover();
    }
  }
  
  void displayVehiculos() {

    for (Vehiculo v : vehiculos) {
      v.display();
    }
  }
}
