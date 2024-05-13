class GameObject {
  int x, y;
  int width, height;

  GameObject(int x, int y, int width, int height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  void dibujar() {
    // Implementación de dibujar específica para cada subclase
  }
}
