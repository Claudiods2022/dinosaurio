class mundo
{
  int cuadros;
  
  
  void colision()
  {
  }
  
  void dibujar()
  {
    
  }
}


class jugador extends mundo
{  
  int puntaje;
  int vida;
  
  jugador()
  {
    puntaje=0;
    vida=3;
  }
  
  void caminar()
  {
  }
  
  void saltar()
  {
  }
  
  void morir()
  {
    vida--;   
  }
  
}

class obstaculo extends mundo
{
  int largo,ancho;
  
  obstaculo(int l,int a)
  {
    largo=l;
    ancho=a;
    
  }
  
  void chocar(jugador J)
  {
     J.morir();
    
  }
  
}






void setup()
{
  size(200,200);
}

void draw()
{
  jugador player;
  obstaculo enemy(10,10);
  
}
