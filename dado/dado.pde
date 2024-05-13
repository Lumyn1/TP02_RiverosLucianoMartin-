int dado;

void setup() {
  size(500, 500);
  textAlign(CENTER, CENTER);
  textSize(32);
}

void draw() {
  background(255);
  
  if (dado != 0) {
    // Mostrar el dado si se ha lanzado
    drawDice(dado);
  } else {
    fill(255, 165, 0); // Color naranja
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100, 10); // Forma de dado
    fill(0);
    text("Presiona 's' para lanzar el dado", width/2, height/2);
  }
}

void keyPressed() {
  if (key == 's') {
    dado = int(random(1, 7));
  }
}

void mousePressed() {
  if (dado != 0) {
    dado = 0;
  }
}

void drawDice(int num) {
  int dotSize = 20;
  int spacing = 30;
  
  fill(255, 165, 0); // Color naranja
  rectMode(CENTER);
  rect(width/2, height/2, 100, 100, 10); // Forma de dado
  
  fill(0);
  switch (num) {
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
