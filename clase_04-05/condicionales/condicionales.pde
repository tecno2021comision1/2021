float px, py;
void setup() {
  size(400, 400);
  background(0);
  /* (comentario de varias líneas 
    Operadores de comparación
   
   >  (mayor que)
   <  (menor que)
   == (igual que)
   
   */
}
void draw() {

  // nùmeros aleatorios (a azar)
  px = random(width); // cualquier valor dentro del width
  py = random(height); // cualquier valor dentro del height


  if (px>100) { // si px es mayor que 100
    ellipse(px, py, 50, 50); // entonces ejecuta este código
  }

  println(px);
}
