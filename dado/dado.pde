class Dado {
  int valor;

  Dado() {
    valor = 0;
  }

  void lanzar() {
    valor = (int)random(1, 7);
  }

  void dibujar() {
    int dotSize = 20;
    int spacing = 30;
    
    fill(255, 165, 0); 
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100, 10); 
    fill(0);
    switch (valor) {
      case 1:
        ellipse(width/2, height/2, dotSize, dotSize);
        break;
      case 2:
        ellipse(width/2 - spacing, height/2 - spacing, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2 + spacing, dotSize, dotSize);
        break;
      case 3:
        ellipse(width/2 - spacing, height/2 - spacing, dotSize, dotSize);
        ellipse(width/2, height/2, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2 + spacing, dotSize, dotSize);
        break;
      case 4:
        ellipse(width/2 - spacing, height/2 - spacing, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2 - spacing, dotSize, dotSize);
        ellipse(width/2 - spacing, height/2 + spacing, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2 + spacing, dotSize, dotSize);
        break;
      case 5:
        ellipse(width/2 - spacing, height/2 - spacing, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2 - spacing, dotSize, dotSize);
        ellipse(width/2, height/2, dotSize, dotSize);
        ellipse(width/2 - spacing, height/2 + spacing, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2 + spacing, dotSize, dotSize);
        break;
      case 6:
        ellipse(width/2 - spacing, height/2 - spacing, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2 - spacing, dotSize, dotSize);
        ellipse(width/2 - spacing, height/2, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2, dotSize, dotSize);
        ellipse(width/2 - spacing, height/2 + spacing, dotSize, dotSize);
        ellipse(width/2 + spacing, height/2 + spacing, dotSize, dotSize);
        break;
    }
  }
}
