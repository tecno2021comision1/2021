color relleno = color(255);
String estado;
void setup() {
  size(500, 500);
  estado = "titulo";
}
void draw() {
  background(0);
  if (estado.equals("titulo")) {
    textSize(50);
    textAlign(CENTER);
    fill(255, 0, 0);
    text("Título del cuento", width/2, height/2);
    botonDibujado(50, 50, 100, 50);
  } else if (estado.equals("introduccion")) {
    //introduccion();
    botonDibujado(50, 50, 100, 50);
    botonDibujado(width-150, 50, 100, 50);
    textSize(30);
    textAlign(CENTER);
    fill(200);
    text("introducción", width/2, height/2);
  } else if (estado.equals("desarrollo")) {
    desarrollo();
  } else if (estado.equals("bifurcaciones")) {
    bifurcaciones();
  } else if (estado.equals("resolviendo")) {
    resolviendo();
  } else if (estado.equals("complicando")) {
    complicando();
  }

  println("Estado " + estado);
}
void mousePressed() {
  if (botonPressed(mouseX, mouseY, 50, 50, 100, 50) && estado.equals("titulo")) { // boton izquierdo
    estado = "introduccion";
  }
  if (botonPressed(mouseX, mouseY, width-150, 50, 100, 50) && estado.equals("introduccion")) { // boton derecho
    estado = "desarrollo";
  }
  if (botonPressed(mouseX, mouseY, width-150, height-100, 100, 50) && estado.equals("desarrollo")) { // boton inferior derecho
    estado = "bifurcaciones";
  }

  if (botonPressed(mouseX, mouseY, 50, 50, 100, 50) && estado.equals("bifurcaciones") || estado.equals("complicando")) { // boton inferior izquierdo
    estado = "resolviendo";
  }
  if (botonPressed(mouseX, mouseY, width-150, 50, 100, 50) && estado.equals("resolviendo") || estado.equals("complicando")) { // boton derecho
    estado = "complicando";
  }
}

void botonDibujado(int px, int py, int ancho, int alto) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(0, 150, 240);
  } else {
    fill(0, 0, 255);
  }
  rect(px, py, ancho, alto, alto/4);
}

void boton(int px, int py, int ancho, int alto, String mensaje) {
  if (botonOver(mouseX, mouseY, px, py, ancho, alto)) {
    fill(0, 150, 240);
  } else {
    fill(0, 0, 255);
  }
  rect(px, py, ancho, alto);
  fill(200); 
  textSize(22); 
  textAlign(LEFT);
  text(mensaje, px, py);
}

boolean botonPressed(int mx, int my, int px, int py, int ancho, int alto) {// mouse, ubicacion y tamaño
  boolean presionado = mx>px && mx<px+ancho && my>py&&my<py+alto == true;
  return presionado;
}
boolean botonOver(int mx, int my, int px, int py, int ancho, int alto) {
  if (mx>px && mx<px+ancho && my>py && my<py+alto) {
    return true;
  } else {
    return false;
  }
}

void keyPressed() {
  estado = "introduccion";
}
