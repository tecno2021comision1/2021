int cant = 10;
int ubic;
float tam;
void setup() {
  size(500, 500);
  ubic = width/cant;
  tam = random(20, ubic);
  rectMode(CENTER);
  frameRate(1);
}
void draw() {
  background(255);
  //tam = random(20, ubic);
  for (int x=0; x<cant; x++) {
    for (int y =0; y<cant; y++) {
      if ((x+y)%2==0) {
        fill(255, 0, 0);
      } else {
        fill(0);
      }
      tam = random(20, ubic);
      rect(x*ubic+ubic/2, y*ubic+ubic/2, tam, tam);
    }
  }
}
void mousePressed() {
  tam = random(20, ubic);
}
