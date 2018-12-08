class bird 
{
  float y = height/2;
  int x = 400;

  float gravity = 0.6;
  float velocity = 0;
  float upSize = -10;
  float airR = 0.9;
  boolean flag=false;
  void display()
  {
    fill(255);
    noStroke();
    ellipse(x,y,150,150);
  }

  void update()
  {
    velocity += gravity + airR;
    y += velocity;   

    if (y >= height-75)                      // blocage bas
    {
      y = height-75;
      velocity = 0;
      flag=false;
    }
   
    if ((y <= 75)&&(flag==false))          // accéleration haut 
    {
     flag=true;
     velocity = 0;
     y=75;
    }   
  }
  
  void up() 
  {    
    if (flag==false) velocity += upSize;
  }
}