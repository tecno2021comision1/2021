int cantTotal = 100; // tamaño de los arreglos
int cantParcial ; // figuras a mostrar en la ventana
int tam = 40;
float [] px = new float[cantTotal];  
float [] py = new float[cantTotal];
float [] dx = new float[cantTotal]; 
float [] dy = new float[cantTotal];
void setup() {
  size(500, 500);
  for (int i=0; i<cantTotal; i++) {
    dx[i] = random(-2, 2);
    dy[i] = random(-2, 2);
  }
}
void draw() {
  background(0);
  for (int i=0; i<cantParcial; i++) {
    ellipse(px[i], py[i], tam, tam);
    // agreguen el código necesario para que reboten en todas direcciones
  }
}
void mousePressed() {
  // cada nueva figura adopta la posición del mouse
  px[cantParcial] = mouseX; 
  py[cantParcial] = mouseY;
  if (cantParcial<cantTotal-1) {
    cantParcial++;
  }
}
