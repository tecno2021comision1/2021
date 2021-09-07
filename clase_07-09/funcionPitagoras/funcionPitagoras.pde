void setup() {
  size(400, 400);
  textSize(25);
}
void draw() {
  background(0);
  stroke(255);
  line(100, 100, 200, 200);
  text("con dist() " + dist(100, 100, 200, 200), 50, 300);
  text("con Pitagoras "+ Pitagoras(100, 100, 200, 200), 50, 350);
}

float Pitagoras(int px1, int py1, int px2, int py2) {
  float resultado = sqrt(sq(px2-px1)+sq(py2-py1));
  return resultado;
}
