public void setup()
{
  size(400, 400);
}
public void draw()
{
  noFill();
  myFractal(200, 200, 500, 750);
}
public void myFractal(int x, int y, int wid, int len)
{
  if (len <= 100) {
    ellipse(x, y, wid, len);
    ellipse(x, y, wid/2, len);
    ellipse(x, y+100, wid, len);
    ellipse(x, y+100, wid/2, len);
    ellipse(x, y-100, wid, len);
    ellipse(x, y-100, wid/2, len);
  } else {
    myFractal(x, y, wid+len/4, len/4);
    myFractal(x, y, wid+len/8, len/4);
    myFractal(x, y, wid+len/12, len/4);
  }
}
