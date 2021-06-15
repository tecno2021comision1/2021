/*falta resolver estados de juego )  */

float nx, ny, ntam, nvel; 
int cx, cy, ctam;
int bx, by, btam; // variables proyectil
boolean balaDisparada, naveDerribada ;
int derribadas, perdidas;
void setup() {
  size(640, 480);

  ntam = random(30, 50);
  nx =-ntam;
  ny = random(ntam/2, height/2);
  nvel = random(2, 4);

  ctam = 60;
  cx = width/2;
  cy = height-ctam;

  btam = ctam/2;
  bx = cx+btam/2;
  by = height-btam/2;
  balaDisparada = false;
}
void draw() {
  background(0, 200, 200);
  textSize(30);
  fill(250, 0, 0);
  text(derribadas, 50, 50); // cuenta derribadas
  text(perdidas, 550, 50);

  fill(0, 255, 0);
  rect(0, height-100, width, 100);

  // la nave ---//
  fill(150);
  ellipse(nx, ny, ntam, ntam*0.8);
  fill(0, 255, 0);
  triangle(nx-ntam, ny, nx+ntam, ny, nx, ny+ntam/2);
  nx+=nvel;
  if (nx>width+ntam) { // si sale de la ventana
    nx =-ntam;
    ny = random(ntam/2, height/2);
    ntam = random(30, 50);
    nvel = random(2, 4);
    perdidas ++;
  }
  if (naveDerribada) {
    ntam = random(30, 50);
    nx =-ntam;
    ny = random(ntam/2, height/2);
    nvel = random(2, 4);
    naveDerribada = false;
  }

  // el cañon
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
  ellipse(bx, by, btam, btam);
  if (balaDisparada && by>-btam/2) { // es pregunta balaDisparada == true
    by-=5;
  } else { // SI NO ESTA DISPARADA
    bx = cx+btam/2; // sigue al cañon
    by = height-btam/2;
    balaDisparada = false; // disparada == false
  }
  //-- derribar nave --//////

  float distanciaDisparo = dist(bx, by, nx, ny);
  if (distanciaDisparo<btam/2+ntam/2) {
    balaDisparada = false;
    naveDerribada = true;
    derribadas ++; // sumo un nave derribada mas
  }
}

void keyPressed() {
  if (keyCode == ' ' || keyCode == UP) {
    balaDisparada = true;
  }
}
