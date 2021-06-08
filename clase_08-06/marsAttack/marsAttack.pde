/*esto está incompleto, faltan resolver varias cuestiones
(puntajes, estado de juego, proyectil, derribo de nave)
*/
float nx, ny, ntam, nvel; 
int cx, cy, ctam;
void setup() {
  size(640, 480);

  ntam = random(30, 50);
  nx =-ntam;
  ny = random(ntam/2, height/2);
  nvel = random(2, 4);

  ctam = 60;
  cx = width/2;
  cy = height-ctam;
}
void draw() {
  background(0, 200, 200);
  fill(0, 255, 0);
  rect(0, height-100, width, 100);

  // la nave ---//
  fill(150);
  ellipse(nx, ny, ntam, ntam*0.8);
  fill(0, 255, 0);
  triangle(nx-ntam, ny, nx+ntam, ny, nx, ny+ntam/2);
  nx+=nvel;
  if (nx>width+ntam) {
    ntam = random(30, 50);
    nx =-ntam;
    ny = random(ntam/2, height/2);
    nvel = random(2, 4);
  }

  // el cañon
  if (keyPressed) {
    if (keyCode==RIGHT) {
      cx += 3;
    }
    if (keyCode==LEFT) {
      cx -= 3;
    }
  }

  fill(0, 0, 255);
  rect(cx, cy, ctam/2, ctam);
}

void keyPressed() {
  if (keyCode==RIGHT) {
    // cx += 3;
  }
  if (keyCode==LEFT) {
    //cx -= 3;
  }
}
