int cant = 2000;
float [] tam = new float[cant];
float [] px = new float[cant];  
float [] py = new float[cant];
float [] dx = new float[cant]; 
float [] dy = new float[cant];
float [] relleno = new float[cant];

void setup() {
  size(500, 500);
  for (int i=0; i<cant; i++) {
    tam[i] = 20;
    px[i] = width/2;
    py[i] = height/2;
    dx[i] = random(-0.8, 0.8);
    dy[i] = random(1, 3);
  }
  noStroke();
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    if (px[i]>width+tam[i]/2 || px[i]<-tam[i]/2 || py[i]<-tam[i]/2) {
      px[i] = mouseX;
      py[i] = mouseY;
    }

    float distan = dist(mouseX, mouseY, px[i], py[i]);
    tam[i] = map(distan, 0, dist(0, 0, width, height), 10, 5);
    relleno[i] = map(distan, 0, dist(0, 0, width, height), 200, 5);
    fill(220, relleno[i]);
    ellipse(px[i], py[i], tam[i], tam[i]);
    px[i] += dx[i];
    py[i] -= dy[i]; //resto el valor para que mueva hacia arriba
  }
}
