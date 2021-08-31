int a = 6;
int b = 4;
void setup() {
  size(400, 400);
  textSize(30);
}
void draw() {
  background(0);
  text(promedio(a, b), 50, 100);
  text(suma(a, b), 50, 150);
}

int promedio(int x, int y) { // devuelve el promedio de los parámetros
  int resultado = (x+y)/2;
  return resultado;
}

int suma(int x, int y) { // devuelve la suma de los parámetros
  int resultado = x+y;
  return resultado;
}
