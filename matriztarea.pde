matriz elipse;
matriz elipse1;

void setup()
{
  size(400,400);
  elipse=new matriz (50,50,5,0,0,100);
  elipse1=new matriz (200,50,5,0,0,100);
  
}

void draw()
{
  background(255);
  elipse.display();
  elipse.mouse();
  elipse1.display();
  elipse1.mouse();
}

class matriz
{
  int x;
  int y;
  int t;
  int i;
  int j;
  int u;
  
  matriz(int x_,int y_,int t_,int i_,int j_,int u_)
  {
    x=x_;
    y=y_;
    t=t_;
    i=i_;
    j=j_;
    u=u_;
  }
  void mouse()
  {
    if((mouseX >=x & mouseX<=x+x)& (mouseY >=y & mouseY<=y+x))
    {
      t=20;
    }
    else
    {
      t=10;
    }
    if((mouseX >=x & mouseX<=x+x)& (mouseY >=y & mouseY<=y+x))
    {
      t=20;
    }
    else
    {
      t=10;
    }
  }
  
  
  
  
  void display()
  {
    for(int i =0; i<u; i+=t)
    {
      for(int j =0; j<u; j+=t)
      {
        noStroke();
        fill(0,0,random(255));
        ellipse(x+i,y+j,t,t);
      }
    }
  }
}