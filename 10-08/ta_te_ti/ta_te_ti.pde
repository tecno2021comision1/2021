int cant = 3;
int tam;
int turno;
boolean [][] juga1 = new boolean[cant][cant];
boolean [][] juga2 = new boolean[cant][cant];
void setup() {
  size(600, 600);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      juga1[i][j] = true;
      juga2[i][j] = true;
    }
  }
}
void draw() {
  background(255);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      strokeWeight(1);
      stroke(100);
      fill(200);
      rect(i*tam, j*tam, tam, tam);

      if (juga1[i][j]==true) {
        fill(255, 0, 0);
        ellipse(i*tam+tam/2, j*tam+tam/2, tam/2, tam/2);
      }
      if (juga2[i][j]==true) {
        strokeWeight(3);
        stroke(0, 0, 255);
        line(i*tam, j*tam, i*tam+tam, j*tam+tam );
        line(i*tam, j*tam+tam, i*tam+tam, j*tam );
      }
    }
  }
}
void mousePressed(){
  /*acá van las acciones para colocar una nueva ficha
  Se debe revisar:
  alternancia de jugadores, la casilla en la que se presiona y que esa casilla esté varía*/

}
