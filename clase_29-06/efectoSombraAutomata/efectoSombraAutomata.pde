//threadit.app << web para grabar videos
int cant = 20;
int ubic;
float tam, px, py;
void setup() {
  size(500, 500);
  ubic = width/cant;

  px = width/2;
  py = height/2;
  rectMode(CENTER);
}
void draw() {
  background(random(255), 255, 0);

  for (int x=0; x<cant; x++) {
    for (int y =0; y<cant; y++) {
      px += random(-1, 1);
      py += random(-1, 1);
      float distan = dist(px, py, x*ubic+ubic/2, y*ubic+ubic/2 );
      tam = map(distan, 0, dist(0, 0, width, height), 20, ubic*2  );
      float tono = map(distan, 0, dist(0, 0, width, height), 250, 50  );
      if ((x+y)%2==0) {
        fill(255, 0, 0, tono);
      } else {
        fill(0);
      }

      rect(x*ubic+ubic/2, y*ubic+ubic/2, tam, tam);
    }
  }
}
void mousePressed() {
  tam = random(20, ubic);
}
