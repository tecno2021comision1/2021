int cant = 20;

void setup() {
  size(500, 500);
  colorMode(HSB, width, 100, 100);
}
void draw() {
  background(0);
  noFill();
  for (int c= 0; c<cant; c++) {
    float tam = map(c, 0, cant-1, width, 20);
    float posx = map(c, 0, cant-1, width/2, mouseX  );
    float posy = map(c, 0, cant-1, height/2, mouseY  );
    float tono = map(c, 0, cant-1, 0, width  );
    //float grosor = map(c, 0, cant-1, 10, 2  );
    float grosor = map(c, 0, cant-1, 30, 5  );
    strokeWeight(grosor);
    if (c%2==0) {
      stroke(tono, 100, 100);
    } else {
      noFill();
    }
    ellipse(posx, posy, tam, tam);
  }
}
