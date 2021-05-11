PFont fuente, otra;
String frase; 
int py = 500;
void setup() {
  size(400, 400);
  frase = "En una galaxia muy, \n muy lejana \n habia una resistencia al \n IMPERIOOOOO"; // alt+92 obtienen la barra invertina \
  fuente = loadFont("Algo.vlw");
  otra = loadFont("BookmanOldStyle-Bold-48.vlw");
  // py = 500;
}
void draw() {
  background(0);
  fill(0, 0, 255);
  textSize(20);
  text(py, 300, 100);
  textAlign(LEFT, TOP);
  textFont(fuente);
  fill(255, 255, 0);
  text("hola, gente", 100, 200);

  textFont(otra, 30);
  fill(255, 0, 0);
  text(frase, 50, py);
  //py = py-1;
  py --;
}
void mousePressed() {
  // py = py-20;
  py -= 20;
}
