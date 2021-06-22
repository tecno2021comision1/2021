
void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  for (int l=0; l<mouseX; l++) {
    float tono = map(l, 0, mouseX, 255, 0);
    stroke(tono);
    line(l, 0, l, height/2);
    stroke(255-tono); // este es el valor opuesto al anterior borde de linea
    line(l, height/2, l, height);
  }
}
