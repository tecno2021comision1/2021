/*Creamos variables para ubicación y dirección*/
float px, py, dirx, diry;

int tam; // tamaño de la figura
void setup() {
  size(400, 400);
  tam = 50;
  dirx = random(-2, 2); // valor aleatorio. Si es negativo, se moverá a la izq
  diry = random(-2, 2); // si es negativo, se moverá hacia arriba
  py = height/2;
  px = width/2;
}
void draw() {
  background(255);

  if (px>= width-tam/2 || px< tam/2 ) { // si toca un lateral o el otro
    dirx = dirx *-1; // rebota por cambio de dirección
  }
  if (py>= height-tam/2 || py< tam/2 ) { // si toca borde sup o inferior
    diry = diry *-1; // rebota por cambio de dirección
  }
  ellipse(px, py, tam, tam);

  px = px+dirx; // la ubicación + la dirección le dará dirección derecha o izquierda
  py = py+diry;
  println(dirx);
}

void mousePressed() {
  dirx = random(-2, 2);
  diry = random(-2, 2);
}
