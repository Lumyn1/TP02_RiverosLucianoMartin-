class Board {

}

Dado dado;

void setup() {
  size(500, 500);
  textAlign(CENTER, CENTER);
  textSize(32);
  dado = new Dado();
}

void draw() {
  background(255);
  
  if (dado.valor != 0) {
    dado.dibujar();
  } else {
    fill(255, 165, 0);
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100, 10); 
    fill(0);
    text("Presiona 's' para lanzar el dado", width/2, height/2);
  }
}

void keyPressed() {
  if (key == 's') {
    dado.lanzar();
  }
}

void mousePressed() {
  if (dado.valor != 0) {
    dado.valor = 0;
  }
}
