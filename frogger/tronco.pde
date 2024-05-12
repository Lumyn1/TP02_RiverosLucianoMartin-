class Tronco extends Vehiculo {
  Tronco(float x_, float y_, float velocidad_) {
    super(x_, y_, velocidad_);
  }
  
  void mover() {
    x += velocidad;
    if (x > width) {
      x = -tam; 
    }
  }
}
