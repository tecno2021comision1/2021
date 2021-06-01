int px, py;
int tam = 50;
String estado; // variable de tipo String (para textos)
void setup() {
  size(400, 400);
  px = width/2;
  py = height/2;
  estado=""; // cualquier valor inicial
}
void draw() {
  background(255);
  if (estado.equals("derecha") && px<width-tam) {
    px++;
  }
  if (estado.equals("izquierda") && px>0) {
    px--;
  }
  if (estado.equals("arriba")) { // completar límite superior
    py--;
  }
  if (estado.equals("abajo")) { // completar limite inferior
    py++;
  }
  println("estado = "+ estado);
  println(keyCode);
  rect(px, py, tam, tam);
}

void keyPressed() {
  if (keyCode==RIGHT || key == 'd' || key == 'D'  ) {
    estado = "derecha";
  }
  if (keyCode==LEFT || key == 'a' || key == 'A') {
    estado = "izquierda";
  }
  if (keyCode==UP || key == 'w' || key == 'W') {
    estado = "arriba";
  }
  if (keyCode==DOWN || keyCode == 's' || key == 'S') {
    estado = "abajo";
  }
  if (keyCode==' ') { // le agregamos la barra espaciadora para reiniciar
    px = width/2;
    py = height/2;
    estado = ""; // estado es cualquier cosa para que no cumpla el resto
  }
}
