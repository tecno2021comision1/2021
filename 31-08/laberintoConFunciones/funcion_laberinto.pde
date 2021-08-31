void laberinto() {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      arriba[i][0] = true;
      abajo[i][4] = true;
      izquierda[0][j] = true;
      derecha[4][j] = true;
      float ubica = random(2);
      if (ubica<1) {
        cereza[i][j] = true;
        contador++;
      }
      println("cereza["+i+"]["+j+"] = " +cereza[i][j]);
    }
  }
  for (int i=0; i<cant-1; i++) {
    arriba[i][1] = true;
    abajo[i][0] = true;
  }
  for (int i=1; i<cant; i++) {
    arriba[i][2] = true;
    abajo[i][1] = true;
  }
  derecha[0][2]=true;
  derecha[0][3]=true;
  izquierda[1][2] = true;
  izquierda[1][3] = true;

  derecha[2][2]=true;
  derecha[2][3]=true;
  izquierda[3][2] = true;
  izquierda[3][3] = true;

  derecha[1][3]=true;
  derecha[1][4]=true;
  izquierda[2][3] = true;
  izquierda[2][4] = true;

  derecha[3][3]=true;
  derecha[3][4]=true;
  izquierda[4][3] = true;
  izquierda[4][4] = true;


  /*arriba[0][0]=true;
   arriba[1][0]=true;
   arriba[2][0]=true;
   arriba[3][0]=true;
   arriba[4][0]=true;*/
}
