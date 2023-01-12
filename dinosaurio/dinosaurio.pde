import processing.sound.*;
SoundFile gestorsonido=new SoundFile(this,"jump.wav");
mundo Mundo;


void setup()
{
  size (700,500);
  background (255);//cielo
  Mundo= new mundo();

}


void draw()
{
  

   Mundo.dibujarse();

}

class dino
{
    
    PImage dinoestado;
    int tamano=100;
    int cordx,cordy;
    int vel;
    int cordx0;
     
    dino(int x,int y, int v)
    {
       dinoestado=loadImage("estatico.jpg");
       cordx0=x;
       cordy=y;
       vel=v;
    }
     
    void moverse(int t)
    {
      if(t%2==0) dinoestado=loadImage("frame0.jpg");
      else dinoestado=loadImage("frame1.jpg");
      cordx=cordx0+vel*t%width;
       
    }
     
    void perder()
    {
     // dinoestado=loadimage("lose.jpg");
    }
    
    void salto()
    {
      
      gestorsonido.play();
    }
    void dibujarse()
    {
         dinoestado.resize(tamano,tamano);
         image(dinoestado,cordx,cordy);
         
    }
    
    void saltar()
    {
       
    } 
}
     
class mundo 
{
  dino jugador1;
  int t=0;
    
  mundo()
  {
     jugador1= new dino(0,375,3);
  }
     
    
  void fondo()
  {
     background(255);
     //fill(#B75809);//montaña
     //quad(0,125,100,125,225,325,0,325);//1
     //fill(#5CF7F3);//cascada
     //rect(50,125,25,200);//2
     //fill(#23AF1C);//-------------------------------------------}
     //circle(290,445,400);// 3                colinas             }
     //fill(#23AF1C);//                                           }
     //circle(137,475,400);//4-------------------------------------}
     //fill(#5CF7F3);
     //rect(125,275,25,125);//5
     //fill(255);
     //circle(137,425,100);//6
     //fill(#934606);
     //rect(425,200,100,100);//7
     //rect(525,200,100,100);//8
     //fill(#206713);
     //triangle(425,200,475,125,525,200);//9
     //fill(#206713);
     //quad(475,125,587,125,625,200,525,200);//10
     //fill(#C8F7EE);
     //rect(550,225,25,25);//11
     //fill(#23AF1C);
     //circle(560,450,400);//12
     //fill(#BC7202);
     //rect(0,400,700,100);//13
     //fill(#74360D);
     //rect(275,175,25,75);//14
     //rect(300,75,25,175);//15
     //fill(#016202);
     //triangle(250,175,287,100,325,175);//16
     //triangle(275,75,310,0,350,75);//17
  }
  
  void dibujarse()
  {
     t++;
     this.fondo();
     jugador1.moverse(t);
     jugador1.dibujarse(); 
     if(t%10==0) jugador1.salto();
  }
 
}
     
     
     
     
     
     
     
