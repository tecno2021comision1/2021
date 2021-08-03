float px0, px1, px2, px3, px4;
float dx0, dx1, dx2, dx3, dx4;
int tam;
int cant = 5;
void setup() {
  size(500, 500);
  tam = height/cant;

  dx0 = random(1, 3);
  dx1 = random(1, 3);
  dx2 = random(1, 3);
  dx3 = random(1, 3);
  dx4 = random(1, 3);
}
void draw() {
  background(0);
  rect(px0, 0, tam, tam);
  rect(px1, tam, tam, tam);
  rect(px2, tam*2, tam, tam);
  rect(px3, tam*3, tam, tam);
  rect(px4, tam*4, tam, tam);
  if (px0>width) {
    px0= 0;
  }
  if (px1>width) {
    px1= 0;
  }

  if (px2>width) {
    px2= 0;
  }
  if (px3>width) {
    px3= 0;
  }
  if (px4>width) {
    px4= 0;
  }
  px0 += dx0;
  px1 += dx1;
  px2 += dx2;
  px3 += dx3;
  px4 += dx4;
}
void keyPressed() {
  px0= 0;
  px1= 0;
  px2= 0;
  px3= 0;
  px4= 0;
}
