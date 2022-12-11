/*
Maxim Gladkov, C22785565
Christmas Card Assignment
TU984
1st Year
*/


//Array List
ArrayList<SnowFlake> snowFlakes = new ArrayList<SnowFlake>();

void setup()
{

  size(1000, 700);
  
  //for loop
  for (int i = 0; i < 100; i++)
  {
    snowFlakes.add(new SnowFlake());
  }
}



//Tree, Star, Decorations, Text
void draw()
{
  //blue sky + framerate, not sure how to separate framerate from lights and snow :(
  background(20, 70, 150);
  frameRate(60);

  //removing outlines on shapes
  noStroke();
  fill(1, 01000, 0);

  //top tree triangle
  triangle(180, 240, 292, 160, 404, 250);

  //second triangle
  triangle(140, 340, 292, 240, 444, 335);

  //third triangle
  triangle(100, 440, 292, 320, 484, 440);

  //white floor(meant to look like snow)

  fill(255);
  ellipse(350, 700, 1500, 300);

  //tree stump
  fill(150, 100, 50);
  rect(267, 440, 40, 120);

  //star
  fill(255, 255, 0);
  triangle(250, 160, 292, 110, 340, 160);
  triangle(250, 120, 292, 170, 340, 120);

  //decoration balls, top triangle
  fill(random(255), random(255), random(255));
  circle(240, 200, 20);

  fill(random(255), random(255), random(255));
  circle(350, 215, 20);

  fill(random(255), random(255), random(255));
  circle(290, 220, 20);

  //decoration balls, middle triangle
  fill(random(255), random(255), random(255));
  circle(180, 330, 20);

  fill(random(255), random(255), random(255));
  circle(260, 300, 20);

  fill(random(255), random(255), random(255));
  circle(320, 280, 20);

  fill(random(255), random(255), random(255));
  circle(360, 310, 20);

  fill(random(255), random(255), random(255));
  circle(295, 330, 20);

  //decoration balls, bottom triangle
  fill(random(255), random(255), random(255));
  circle(275, 400, 20);

  fill(random(255), random(255), random(255));
  circle(150, 410, 20);

  fill(random(255), random(255), random(255));
  circle(360, 370, 20);

  fill(random(255), random(255), random(255));
  circle(390, 440, 20);

  //Text()
  fill(255, 0, 0);
  textSize(70);
  text("Merry", 500, 120);
  fill(255, 0, 0);
  textSize(70);
  text("Christmas", 435, 200);

  //for loop
  fill(255, 255, 255);
  for (SnowFlake snowFlake : snowFlakes)
  {
    snowFlake.draw();
  }
  
}



class SnowFlake
{
  //variables
  float x = random(width);
  float y = random(height);
  float r = random(10);

  //for loop for snow starting from the top
  void draw()
  {

    ellipse(x, y, r, r);

    y++;

    if (y > height)
    {
      y = 0;
      x = random(width);
    }
  }
}
