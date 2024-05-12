class Jugador {
  float x, y; 
  float tam; 
  
  Jugador(float x_, float y_) {
    x = x_;
    y = y_;
    tam = 20;
  }
  
  void mover(float dx, float dy) {
    x += dx;
    y += dy;
  }
  
  void display() {
    fill(0, 255, 0);
    ellipse(x, y, tam, tam);
  }
}
