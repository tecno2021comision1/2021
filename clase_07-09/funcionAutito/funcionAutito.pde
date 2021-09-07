/*Como ejercicio prueben utilizar la función dentro de un for o usar un arreglo para tener
una velocidad diferente para cada auto*/
int pos;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  // ruedas "sueltas", sin conectar con el resto
  rueda(100, 100, 80, 1);
  rueda(200, 100, 80, 3);
  rueda(300, 200, 150, 0.5);

  if (pos>width) {
    pos= -100;
  }

  auto(pos, 100, 150, 100, color(255, 0, 0), 4.2);
  auto(pos, 300, 100, 50, color(255, 255, 0), 1.5);
  pos+=2; // reemplazar el 2 por una variable
}
