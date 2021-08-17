// Le agregué estados para fraccionar mejor el código
int cant = 3;
int tam;
int turno;
boolean [][] juga1 = new boolean[cant][cant];
boolean [][] juga2 = new boolean[cant][cant];

String estado = "jugando"; // estado del juego
void setup() {
  size(600, 600);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      juga1[i][j] = false;
      juga2[i][j] = false;
    }
  }
  textSize(40);
  textAlign(CENTER);
}
void draw() {
  background(255);
  if (estado.equals("jugando")) {
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
        if (juga2[i][j]) {
          strokeWeight(3);
          stroke(0, 0, 255);
          line(i*tam, j*tam, i*tam+tam, j*tam+tam );
          line(i*tam, j*tam+tam, i*tam+tam, j*tam );
        }
        /// condiciones gana juga1
        if (juga1[0][0] && juga1[1][0] && juga1[2][0] ||// fila superior
          juga1[0][1] && juga1[1][1] && juga1[2][1]|| // fila medio
          juga1[0][2] && juga1[1][2] && juga1[2][2] ||// fila inferior

          juga1[0][0] && juga1[0][1] && juga1[0][2] || // columna izquierda
          juga1[1][0] && juga1[1][1] && juga1[1][2] || // comumna del medio
          juga1[2][0] && juga1[2][1] && juga1[2][2] || // comumna derecha

          juga1[0][0] && juga1[1][1] && juga1[2][2] || // diagonal descendente
          juga1[0][2] && juga1[1][1] && juga1[2][0] ) {  // diagonal ascendente

          estado = "gana1"; // si completa alguna fila, columna o diagonal          
        }
        // condiciones para que gane jugador 2
        if (juga2[0][j] && juga2[1][j] && juga2[2][j] || 
          juga2[i][0] && juga2[i][1] && juga2[i][2] ||

          juga2[0][0] && juga2[1][1] && juga2[2][2] || // diagonal descendente
          juga2[0][2] && juga2[1][1] && juga2[2][0] ) {  // diagonal ascendente) {
         
          estado = "gana2"; // si completa alguna fila, columna o diagonal
        }
      }
    }
  }
  if (estado.equals("gana1")) {
    fill(0, 100);
    rect(0, 0, width, height);
    fill(255, 0, 0);
    text("GANA JUGADOR 1!!", width/2, height/2);
  }
  if (estado.equals("gana2")) {
    fill(0, 100);
    rect(0, 0, width, height);
    fill(0, 0, 255);
    text("GANA JUGADOR 2!!", width/2, height/2);
  }


  println(turno);
}
void mousePressed() {
  /*acá van las acciones para colocar una nueva ficha
   Se debe revisar:
   alternancia de jugadores, la casilla en la que se presiona y que esa casilla esté vacía*/


  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (juga1[i][j]==false && juga2[i][j]==false) {

        if (mouseX>i*tam && mouseX<i*tam+tam && mouseY>j*tam && mouseY<j*tam+tam) {
          if (turno%2==0) {
            juga1[i][j]=true;
          } else {
            juga2[i][j]=true;
          }
          turno++;
        }
      }
    }
  }
}
void keyPressed() {
  turno = 0;
  estado = "jugando";
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      juga1[i][j] = false;
      juga2[i][j] = false;
    }
  }
}
