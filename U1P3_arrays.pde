PImage clouds;
int[] BeeY = new int[10];
int[] BeeX = new int[10];

void setup ()
{
  size(500, 500);
  clouds = loadImage("clouds.jpg");
  clouds.resize(500, 500);

  for (int i = 0; i<10; i++)
  {
    BeeY[i] = (int)random(0, 500);
  }

  for (int i = 0; i<10; i++)
  {
    BeeX[i] = (int)random(0, 500);
  }
}


void draw ()
{ 
  image(clouds, 0, 0);

  for (int i=0; i<10; i++)
  {
    DrawBee(BeeX[i], BeeY[i]);
    BeeY[i] = BeeY[i] - 1;

    if (BeeY[i] < 5)
    {
      BeeY[i] = (int)random(0,500);
    }
  }
}


void DrawBee(int x, int y)
{
  fill (250, 216, 23);
  ellipse (x, y, 30, 70);

  fill (250, 163, 23);
  ellipse (x, y-20, 35, 35);

  fill(201, 163, 101);
  rect(x+10, y-10, 10, 50);
  rect(x-20, y-7, 10, 50);

  fill(0, 0, 0);
  ellipse (x-6, y-20, 4, 4);
  ellipse (x+6, y-20, 4, 4);
  rect (x, y-45, 5, 10);
}
