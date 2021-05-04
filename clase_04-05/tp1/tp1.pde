int entero;
float flotante;
String frase;
void setup() {
  size(400, 400);
  entero = 3;
  flotante = 3.33;
  frase = "esto es una frase cualquiera";
}
void draw() {
  println(entero, flotante);
  println(frase);
}
