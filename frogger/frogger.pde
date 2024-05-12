Jugador jugador;
SpawnerVehiculos spawner;

void setup() {
  size(800, 600);
  jugador = new Jugador(width/2, height-20);
  spawner = new SpawnerVehiculos();
}

void draw() {
  background(100);
  
  // Actualizar y mostrar vehículos
  spawner.generarVehiculos();
  spawner.moverVehiculos();
  spawner.displayVehiculos();
  
  // Mostrar jugador
  jugador.display();
}

void keyPressed() {
  if (keyCode == UP) {
    jugador.mover(0, -5);
  } else if (keyCode == DOWN) {
    jugador.mover(0, 5);
  } else if (keyCode == LEFT) {
    jugador.mover(-5, 0);
  } else if (keyCode == RIGHT) {
    jugador.mover(5, 0);
  }
}
