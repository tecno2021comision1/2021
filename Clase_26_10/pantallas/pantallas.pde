Principal principal;
void setup() {
  size(800, 600);
  principal = new Principal();
}
void draw() {
  principal.dibujar();
}
void mousePressed() {
  principal.detectarBotones();
}
