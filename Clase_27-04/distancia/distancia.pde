float distancia; // declaro variable de tipo flotante (con decimales) 
void setup() {
  size(400, 400);
}
void draw() {
  line(100, 100, 300, 100);
  line(100, 100, 300, 300);

  distancia = dist(0, 0, mouseX, mouseY); 
  /* dist() calcula a qué distancia, en pixeles, está el mouse de la esquina superior izquierda
  y guarda ese dato en la variable distancia*/
  
  line(0, 0, mouseX, mouseY);

  println(distancia); // imprimimos en la consola el valor de distancia
}
