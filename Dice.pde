Die bob;
int dy;
int dx;
int sum = 0;
void setup()
  {
    size(600,700);
  }
  void draw()
  {
    background(0);
    for(dy = 0; dy < 600; dy+=200){
      for(dx = 0; dx <= 600; dx+=200){
        bob = new Die(dx,dy);
        bob.roll();
        bob.show();
        noLoop();
      }
    }
    textSize(37);
    textAlign(CENTER);
    fill(255,255,255);
    text("Total dots: " + sum, 300, 650);
  }
  void mousePressed()
  {
    redraw();
    sum = 0;
  }
  class Die //models one single dice cube
  {
      int myX, myY, counter;
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;
        counter = 0;
      }
      void roll()
      {
        counter = (int)(Math.random()*6) + 1;
      }
      void show()
      {
        fill(255,255,255);
        rect(myX,myY,195,195,10);
        fill(0,0,0);
        if (counter == 1){
        ellipse(dx+100,dy+100,30,30);
        sum = sum + 1;
        } 
        if (counter == 2){
        ellipse(dx+50,dy+50,30,30);
        ellipse(dx+150,dy+150,30,30);
        sum = sum + 2;
        }
        if (counter == 3){
        ellipse(dx+50,dy+50,30,30);
        ellipse(dx+100,dy+100,30,30);
        ellipse(dx+150,dy+150,30,30);
        sum = sum + 3;
        }
        if (counter == 4){
        ellipse(dx+50,dy+50,30,30);
        ellipse(dx+150,dy+50,30,30);
        ellipse(dx+50,dy+150,30,30);
        ellipse(dx+150,dy+150,30,30);
        sum = sum + 4;
        }
        if (counter == 5){
        ellipse(dx+50,dy+50,30,30);
        ellipse(dx+150,dy+50,30,30);
        ellipse(dx+100,dy+100,30,30);
        ellipse(dx+50,dy+150,30,30);
        ellipse(dx+150,dy+150,30,30);
        sum = sum +5;
        }
        if (counter == 6){
        ellipse(dx+50,dy+50,30,30);
        ellipse(dx+50,dy+100,30,30);
        ellipse(dx+50,dy+150,30,30);
        ellipse(dx+150,dy+50,30,30);
        ellipse(dx+150,dy+100,30,30);
        ellipse(dx+150,dy+150,30,30);
        sum = sum + 6;
        }
      }
  }
