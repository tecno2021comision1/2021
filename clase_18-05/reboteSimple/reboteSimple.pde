int px, dir;
int tam;
void setup() {
  size(400, 400);
  tam = 50;
  dir = 1;
  px = tam/2;
}
void draw() {
  background(255);
  ellipse(px, 100, tam, tam);
  if (px>= width-tam/2 || px< tam/2 ) {
    dir = dir *-1;
  }


  px = px+dir;
  println(dir);
}
