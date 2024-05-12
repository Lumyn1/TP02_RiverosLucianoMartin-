abstract class Vehiculo {
  float x, y; 
  float velocidad; 
  float tam; 
  
  Vehiculo(float x_, float y_, float velocidad_) {
    x = x_;
    y = y_;
    velocidad = velocidad_;
    tam = 40;
  }
  
  abstract void mover();
  
  void display() {
    fill(255);
    rect(x, y, tam, tam/2);
  }
}
