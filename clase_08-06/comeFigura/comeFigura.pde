/*este ejercicio consiste en lograr el contacto entre la figura amarilla (mi personaje)
y la figura violeta (el objetivo), utilizando las flechas del teclado para el dezplazamiento*/

int px, py, mtam; // mi personaje;
float opx, opy, otam; // el enemigo
String dire ; // dirección
int vel;
int puntos;
void setup() {
  size(400, 400);
  px = width/2;
  py = height/2;
  puntos = 0;
  mtam = 50;
  otam = 80;
  vel = 3;
  opx = random(otam/2, width-otam/2);
  opy = random(otam/2, height-otam/2);
  dire = "";
  textSize(40);
}
void draw() {
  background(0);
  fill(255, 0, 255);
  ellipse(opx, opy, otam, otam);
  if (frameCount%90==0) {
    opx = random(otam/2, width-otam/2);
    opy = random(otam/2, height-otam/2);
  }


  /// MI PERSONAJE
  if (dire.equals("norte") && py>mtam/2) {
    py -= vel;
  }
  if (dire.equals("sur") && py<height-mtam/2) {
    py += vel;
  }
  if (dire.equals("este") && px<width-mtam/2) {
    px += vel;
  }
  if (dire.equals("oeste") && px>mtam/2) {
    px -= vel;
  }

  fill(255, 255, 0);
  ellipse(px, py, mtam, mtam); // nuestro personaje

  /// contacto
  float distan = dist(px, py, opx, opy ); // calcula la distancia
  if (distan<= mtam/2+otam/2) {
    puntos ++;
    opx = random(otam/2, width-otam/2);
    opy = random(otam/2, height-otam/2);
  }
  println("la distancia es: " + distan);
  fill(255, 0, 0);
  text(puntos, 50, 50);
  println(frameCount);
}
void keyPressed() {
  if (keyCode== UP) {
    dire = "norte";
  }
  if (keyCode== DOWN) {
    dire = "sur";
  }
  if (keyCode== RIGHT) {
    dire = "este";
  }
  if (keyCode== LEFT) {
    dire = "oeste";
  }
  if (keyCode==ENTER) { // reiniciamos al presionar Enter
    px = width/2;
    py = height/2;
    opx = random(otam/2, width-otam/2);
    opy = random(otam/2, height-otam/2);
    dire = "";
    puntos = 0;
  }
}
