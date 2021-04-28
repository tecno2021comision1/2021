int pos;
float tam;
void setup() {
  size(400, 400);
  noStroke();
}
void draw() {
  background(255);
  
  
  
  
  
  
  
  
  
  
  
  
  float distan = dist(pos, 0, width-pos, 0);
  tam = map(distan, width, 0, 0, width);
  float tono = map(distan, width, 0, 255, 0);
  fill(0, 0, 255, tono);
  ellipse(pos, pos, tam, tam);
  ellipse(width-pos, pos, tam, tam);
  pos++;
}
void mousePressed() {
  pos =0;
}
