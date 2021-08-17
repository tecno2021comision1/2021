int cant = 5;
int tam;
int sep = 3;
boolean [][] arriba = new boolean[cant][cant];
boolean [][] abajo = new boolean[cant][cant];
boolean [][] derecha = new boolean[cant][cant];
boolean [][] izquierda = new boolean[cant][cant];

void setup() {
  size(500, 500);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      arriba[i][j] = true;
      abajo[i][j] = true;
      derecha[i][j] = true;
      izquierda[i][j] = true;
    }
  }
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      stroke(0, 255, 0); 
      strokeWeight(2);
      line(i*tam+sep, j*tam+sep, i*tam+tam-sep, j*tam+sep); // linea arriba
      line(i*tam+sep, j*tam+tam-sep, i*tam+tam-sep, j*tam+tam-sep); // linea abajo
    }
  }
}
