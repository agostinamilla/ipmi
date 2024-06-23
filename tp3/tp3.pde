//Agostina Milla
//tp3 Comisión 1
//link youtube: https://youtu.be/m1GlsVXDw9w :)

PImage arte;
//funciones propias
int cuadrado = 16;
int tam;
float r, g, b;
boolean click;

void setup() {
  size(800, 400);
  background (255);
  arte = loadImage("arte.jpg");
  tam = width/cuadrado;
  click = true;
}

void draw() {
  image(arte, 0, 0, 400, 400);
  // ciclo FOR anidados
  noStroke();
  //condicionales (IF)
  if (click) {
    for (int i=8; i<800; i++) {
      for (int j=0; j<800; j++) {
        dibujar(i, j, tam);
      }
    }
  }
  click = false;
}
// función q RETORNA un float del 0 al 255 en forma aleatoria a las lineas fill
float randomizar() {
  //función matemática (uso de random)
  float c = random(255);
  return c;
}
//función q NO RETORNA pq esta escrito con el void y pq no devuelve nada al void draw
void dibujar(int x, int y, int xd) {
  fill(randomizar(), randomizar(), randomizar());
  rect(x*xd, y*xd, xd, xd);
  fill(randomizar(), randomizar(), randomizar());
  rect(x*xd+10, y*xd+10, xd-20, xd-20);
}
//reinica el progama // evento de mousse //
void mousePressed() {
  click = true;
  println(mouseX+","+mouseY);
}
