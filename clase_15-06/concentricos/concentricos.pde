size(600, 400);
for (int l=0; l<width; l++) {
  float tono = map(l, 0, width, 255, 0);
  stroke(tono, 0, 0);
  line(l, 0, l, height);
}
