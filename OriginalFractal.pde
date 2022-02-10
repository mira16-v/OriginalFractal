public void setup()
{
  size(400, 400);
}
public void draw()
{
  myFractal(200, 200, 300, 300);
}
public void myFractal(int x, int y, int wid, int len)
{
  if(len <= 60){
    ellipse(x, y, wid, len);
    ellipse(x, y, wid/2, len);
  } else {
    myFractal(x, y, wid+len/2, len/2);
    myFractal(x, y, wid+len/3, len/2);
  }
}
