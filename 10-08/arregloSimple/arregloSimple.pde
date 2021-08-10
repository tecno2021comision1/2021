int cantTotal = 100;
int cantParcial;
int tam = 40;
float [] px = new float[cantTotal];  
float [] py = new float[cantTotal];
float [] dx = new float[cantTotal]; 
float [] dy = new float[cantTotal];
void setup() {
  size(500, 500);

  for (int i=0; i<cantTotal; i++) {
    px[i] = random(width);
    py[i] = random(height);
    dx[i] = random(-2, 2);
    dy[i] = random(-2, 2);
  }
}
void draw() {
  background(0);
  for (int i=0; i<cantTotal; i++) {
    ellipse(px[i], py[i], tam, tam);
  }
}
