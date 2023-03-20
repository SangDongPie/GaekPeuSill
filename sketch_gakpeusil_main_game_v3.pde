float [] a, b, j, z;
int e = 15, points = 0, p, x, y;
float totaltime = 5000, savedtime;

void setup()
{
  size(1080,720);
  a = new float[15];
  b = new float[15];
  j = new float [15];
  z = new float[15];
  p = 1;
  for (int i=0;i<15;i++)
  {
    a[i] = random(50,980); 
    j[i] = random(50,980);
    b[i] = a[i] + 50;
    z[i] = 0;
  }
}

void draw()
{
  x = mouseX;
  y = mouseY;
  background(255,255,255);
   for(int i=0;i<15;i++)
 {    
   int f=25;
   int k;
   k = 3*i+1;
   fill(250,0,0);
   rect(0,f*k,a[i],e);
   fill(255,255,255);
   rect(a[i],f*k,b[i]-a[i],e);
   fill(250,0,0);
   rect(b[i],f*k,width-b[i],e);
   fill(0,0,0);
   rect(x - 10 ,y - 10,20,20);
   noStroke();
 
   if (dist(x ,y, j[i], f*k - 12.5)<=8) { 
     z[i]+=1;
   }
   if (z[i]==0) {
     noStroke();
     fill(0); circle(j[i], f*k - 12.5 ,8);
   } else if (z[i]==1) {
     points += 1;
     z[i]+=1;
   } else {
     noStroke();
     fill(255); circle(j[i], f*k - 12.5 ,8);
   }
     fill(0);
  textSize(30);
  noStroke();
  text("Score :", 900, 20);
  text(points, 1000, 20);
  savedtime = totaltime - millis()/10;
  savedtime = floor(savedtime*100)/1000;
  textSize(30);
  text("time :", 10, 20);
  text(savedtime/10, 100, 20);
   

  if ( x - 10 < a[i] && y + 10 > f*k && y - 10 < f*k+e) 
   {
     p = 0;
   }
   else if ( x + 10 > b[i] && y + 10 > f*k && y - 10 < f*k+e)
   {
     p = 0;
   }
  else if(y > 700 && points >= 10){
     p = 2;
   }
   if(savedtime == 0){
     p = 0;
   }
 }  // for
  if(p == 0) gameover();
  else if(p == 2) complete();
  
} // draw
