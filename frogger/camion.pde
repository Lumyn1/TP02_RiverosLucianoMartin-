class Camion extends Vehiculo {
  Camion(float x_, float y_, float velocidad_) {
    super(x_, y_, velocidad_);
  }
  
  void mover() {
    x -= velocidad;
    if (x < -tam) {
      x = width; 
    }
  }
}
