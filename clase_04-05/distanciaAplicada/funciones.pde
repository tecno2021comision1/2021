float tam, distan;
int px;
void codigoSecreto() {
  distan = dist(px, px, width-px, px);
  tam = map(distan, width, 0, 0, width); 
  float tono =  map(distan, width, 0, 255, 0);
  fill(0, 255, 0, tono);
  ellipse(px, px, tam, tam);
  ellipse(width-px, px, tam, tam);
  px++;
  px = px%width;
}
