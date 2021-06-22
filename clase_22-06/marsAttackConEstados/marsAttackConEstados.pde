PImage fondo;
float nx, ny, ntam, nvel; // variables de la nave
int cx, cy, ctam; // variables del cañón
int bx, by, btam; // variables proyectil

boolean balaDisparada, naveDerribada ; // variables lógicas de estado de la bala y nave
int derribadas, perdidas, tiempo; // variables para contar puntajes a favor y en contra
String estado;
int segundos;
void setup() {
  size(640, 480);
  // valores iniciales de la nave
  ntam = random(30, 50); 
  nx =-ntam;
  ny = random(ntam/2, height/2);
  nvel = random(2, 4);
  // valores iniciales del cañon
  ctam = 60;
  cx = width/2;
  cy = height-ctam;

  // valores iniciales de la bala en relación al cañón
  btam = ctam/2;
  bx = cx+btam/2;
  by = height-btam/2;
  balaDisparada = false;

  // estado inicial del juego
  perdidas =0;
  derribadas = 0;
  fondo = loadImage("fondo.jpg");
  estado = "titulo";
  segundos = 0;
  textAlign(CENTER);
}
void draw() {
  if (frameCount%60==0) {
    segundos++;
  }
  if (segundos>=3 && estado.equals("titulo") ) {
    estado = "instrucciones";
  }
  if (estado.equals("titulo")) {
    background(fondo);
    textSize(50);
    fill(255, 0, 0);
    text("MARS ATTACKS", width/2, height/2);
  }

  if (estado.equals("instrucciones")) {
    background(0);
    textSize(30); 
    fill(255, 0, 0);
    text("INSTRUCCIONES", width/2, 100);
    textSize(20); 
    fill(255);
    text("Derriba las naves antes que \n salgan de la pantalla \n\n Utiliza las flechas del teclado \n para mover el cañón  \n y la barra espaciadora para disparar\n\n (Presiona Enter para comenzar)", width/2, 200);
  }

  if (estado.equals("jugando")) {
    background(0, 200, 200);
    tiempo = segundos;

    textSize(30);
    fill(250, 0, 0);
    text(derribadas, 50, 50); // cuenta derribadas
    text(perdidas, 550, 50); // cuenta las naves que se escaparon
    fill(255, 255, 0);
    text(tiempo, width/2, 50); // tiempo transcurrido jugando

    fill(0, 255, 0);
    rect(0, height-100, width, 100); // fondo verde del pasto

    //--- dibujo de la nave y comportamiento ---//
    fill(150);
    ellipse(nx, ny, ntam, ntam*0.8); //dibujamos la cabina de la nave
    fill(0, 255, 0);
    triangle(nx-ntam, ny, nx+ntam, ny, nx, ny+ntam/2); // el cuerpo principal
    nx+=nvel; // con esto se mueve

    if (nx>width+ntam) { // si sale de la ventana, la reiniciamos
      nx =-ntam;
      ny = random(ntam/2, height/2);
      ntam = random(30, 50);
      nvel = random(2, 4);
      perdidas ++; // se agrega una perdida
    }


    if (naveDerribada) { // si fue derribada, también
      ntam = random(30, 50);
      nx =-ntam;
      ny = random(ntam/2, height/2);
      nvel = random(2, 4);
      naveDerribada = false;
    }

    //--- dibujo del cañón y comportamiento ---//
    if (keyPressed) {
      if (keyCode==RIGHT && cx <width-ctam/2) {
        cx += 3;
      }
      if (keyCode==LEFT && cx>0) {
        cx -= 3;
      }
    }

    fill(0, 0, 255);
    rect(cx, cy, ctam/2, ctam);

    /// PROYECTIL --////////////
    fill(100);
    ellipse(bx, by, btam, btam); // dibujamos la bala
    if (balaDisparada && by>-btam/2) { // es pregunta balaDisparada == true
      by-=5;
    } else { // SI NO ESTA DISPARADA
      bx = cx+btam/2; // sigue al cañon
      by = height-btam/2;
      balaDisparada = false; // disparada == false
    }

    ///--- Código para derribar nave --///

    float distanciaDisparo = dist(bx, by, nx, ny); // calculamos la distancia entre la nave y la bala
    if (distanciaDisparo<btam/2+ntam/2) { // si esa distancia es menor a la suma de sus radios..
      balaDisparada = false; // reiniciamos la bala
      naveDerribada = true; // reiniciamos la nave
      derribadas ++; // sumo un nave derribada mas
    }

    if (tiempo>=10) { // revisamos el resultado transcurrido 10 segs
      if (derribadas>perdidas) { // si derribamos mas de las que se escaparon...
        estado = "ganar"; // ganamos
      } else {
        estado = "perder";
        background(255, 0, 0);
        fill(255);
        textSize(40);
        text("Game Over \n Malditos marcianos!!!", width/2, height/2);
      }
    }
    if (estado.equals("ganar")) {
      background(0, 0, 255);
      fill(255);
      textSize(40);
      text("Has salvado la Tierra", width/2, height/2);
    }
  }
  println("estado = "+ estado);
}


void keyPressed() {
  if (keyCode == ' ' || keyCode == UP) { // con espaciador o flecha arriba
    balaDisparada = true; // disparamos la bala
  }
  if (keyCode== ENTER) {
    setup();
    estado = "jugando";
    segundos = 0;
  }
}
