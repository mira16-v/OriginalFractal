public void setup()
{
  size(400, 400);
}
public void draw()
{
  fractal(50, 50, 40, 60);
}
public void fractal(int x, int y, int wid, int len)
{
  if(len <= 60){
    ellipse(x, y, wid, len);
  } else {
    fractal(x/3, y/3, wid/2, len/2);
  }
}
