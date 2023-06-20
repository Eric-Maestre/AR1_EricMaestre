// variables

int enemies = 12;
int obstaculos = 6;
int radio = 30;

float [] xPNJ = new float[enemies];
float [] yPNJ = new float[enemies];
float [] alfa = new float[enemies];

float [] vxef = new float[enemies];
float [] vyef = new float[enemies];
float [] moduloef = new float[enemies];
float [] vxep = new float[enemies];
float [] vyep = new float[enemies];
float [] moduloep = new float[enemies];

float []obstaclesX = new float[obstaculos]
float []obstaclesY = new float[obstaculos]
float [] vxpb = new float[obstaculos];
float [] vypb = new float[obstaculos];
float [] modulopb = new float[obstaculos];
float [] vxfb = new float[obstaculos];
float [] vyfb = new float[obstaculos];
float [] modulofb = new float[obstaculos];

float [] playerPos = new float[2];
float [] friendPos = new float[2];
float [] friendPos2 = new float[2];
float [] lastPlayerPos = new float[2];
float [] lastFriendPos = new float[2];
float [] lastFriendPos2 = new float[2];
float [] modulof = new float[2];

int omegaX = 15;
int omegaY = 15;
float alfaFriend1, alfaFriend2;



//obstaculos

float [] obstaculosPos = new float [obstaculos];
//setup
void setup()
{
  size(1300, 900);
  playerPos[0] = width/2.0;
  playerPos[1] = height/2.0;
  lastPlayerPos[0] = width/2.0;
  lastPlayerPos[1] = height/2.0;
  alfaFriend1 = 0.04;
  alfaFriend2 = 0.11;
  friendPos[0] = width/2.0 + 100;
  friendPos[1] = height/2.0;
  friendPos2[0] = width/2.0 -100;
  friendPos2[1] = height/2.0;
  lastFriendPos[0] = width/2.0 + 100;
  lastFriendPos[1] = height/2.0;
  lastFriendPos2[0] = width/2.0 -100;
  lastFriendPos2[1] = height/2.0;
  
  for (int i = 0; i < obstaculos; i++)
  {
    obstaclesX[i] = random(width - 20);
    obstaclesY[i] = random(height - 20);
  }
}

// draw


void draw()
{
  background(255);

  keyPressed();

  fill(255, 0, 0);
  ellipse(playerPos[0], playerPos[1], radio, radio);

  if (modulof[0] <= radio*10.0) {
    friendPos[0] = lastFriendPos[0] + alfaFriend1*(playerPos[0] - friendPos[0]);
    friendPos[1] = lastFriendPos[1] + alfaFriend1*(playerPos[1] - friendPos[1]);
    lastFriendPos[0] = friendPos[0];
    lastFriendPos[1] = friendPos[1];
  } else if (modulof[0] <= radio*5.0) {
    friendPos[0] = lastFriendPos[0] - alfaFriend1*(playerPos[0] - friendPos[0]);
    friendPos[1] = lastFriendPos[1] - alfaFriend1*(playerPos[1] - friendPos[1]);
    lastFriendPos[0] = friendPos[0];
    lastFriendPos[1] = friendPos[1];
  }

  if (modulof[1] <= radio*10.0) {
    friendPos2[0] = lastFriendPos2[0] + alfaFriend2*(playerPos[0] - friendPos2[0]);
    friendPos2[1] = lastFriendPos2[1] + alfaFriend2*(playerPos[1] - friendPos2[1]);
    lastFriendPos2[0] = friendPos2[0];
    lastFriendPos2[1] = friendPos2[1];
  } else if (modulof[1] <= radio*5.0) {
    friendPos2[0] = lastFriendPos2[0] - alfaFriend2*(playerPos[0] - friendPos2[0]);
    friendPos2[1] = lastFriendPos2[1] - alfaFriend2*(playerPos[1] - friendPos2[1]);
    lastFriendPos2[0] = friendPos2[0];
    lastFriendPos2[1] = friendPos2[1];
  }

  fill(255, 0, 255);
  ellipse(friendPos[0], friendPos[1], radio, radio);
  ellipse(friendPos2[0], friendPos2[1], radio, radio);
  
  for(int i = 0; i < obstaculos; 



  for (int i = 0; i < enemies; i++)
  {
    vxep[i] = playerPos[0] - xPNJ[i]; //distancia player-enemigoX
    vyep[i] = playerPos[1] - yPNJ[i]; //distancia player-enemigoY
    moduloep[i] = sqrt(vxep[i]*vxep[i]+vyep[i]*vyep[i]); //modulo, importantisimo



    if (moduloep[i] <= radio*2.0)
    {
    }
  }
}
