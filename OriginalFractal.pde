public void setup()
{
  size(400, 400);
  background(21, 107, 209);
}
public void draw()
{
  fill(234, 183, 12);
  arc(160, 135, 100, 80, -PI, 0);
  noFill();
  stroke(232, 19, 26);
  myFractal(10, 10, 2400, 2400);
 // myFractal(200, 200, 750, 500);
}
public void myFractal(int x, int y, int wid, int len)
{
  if (len <= 50) {
    ellipse(x, y, wid, len);
    ellipse(x, y, wid/2, len);
  } else {
    myFractal(x+50, y+50, wid-len/8, len/2);
    myFractal(x+50, y+50, wid-len/4, len/4);
    myFractal(x+50, y+50, wid-len/2, len/6);
  }
}
