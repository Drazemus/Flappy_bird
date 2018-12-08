bird b;

void setup ()
{
  size (1080, 600);
  b = new bird ();  
}

void draw()
{
  background (0);
  b.update();
  b.display();

  if (mousePressed == true)
  {    
     b.up();     
  }  
}

  