carro primero=new carro(0,30,2);
carro segundo=new carro(300,30,-2);  
  

void setup()
{
  
  size(400,400);
  frameRate(10);

}

void draw()
{
  background(125);
  
  segundo.moverse();
  primero.moverse();
  primero.dibujar();
  segundo.dibujar();
}


class carro
{
  int l=10,a=20;
  int t;
  
  int cx,cy,cx0;
  int vel;
  
  
  carro(int x,int y, int v)
  {
    cx0=x;
    cy=y;
    vel=v;
    t=0;
  }
  
  void moverse()
  {
    t++;
    cx=cx0+vel*t;
    if (cx>=width) t=0;
    
     
  }
  
  void dibujar()
  {
    rect(cx,cy,a,l);
    textSize(20);
    text(cx+","+cy,cx,cy);
  }
  
}
