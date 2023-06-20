void keyPressed() {
  switch(key)
  {
  case 'w':
    playerPos[1] = lastPlayerPos[1] - omegaY;
    
      lastPlayerPos[1] = playerPos[1];

    break;
  case 'a':
    playerPos[0] = lastPlayerPos[0] - omegaX;
lastPlayerPos[0] = playerPos[0];


    break;
  case 's':
    playerPos[1] = lastPlayerPos[1] + omegaY;
      lastPlayerPos[1] = playerPos[1];




    break;
  case 'd':
    playerPos[0] = lastPlayerPos[0] + omegaX;
    lastPlayerPos[0] = playerPos[0];


    break;
  }
}
