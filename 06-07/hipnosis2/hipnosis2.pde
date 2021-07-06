int cant = 20;

void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  for (int c= 0; c<cant; c++) {
    float tam = map(c, 0, cant-1, width, 20);
    float posx = map(c, 0, cant-1, width/2, mouseX  );
    float posy = map(c, 0, cant-1, height/2, mouseY  );
    float tono = map(c, 0, cant-1, 50, 255  );
    if (c%2==0) {
      fill(255, 0, 0, tono);
    } else {
      fill(255);
    }
    ellipse(posx, posy, tam, tam);
  }
}
