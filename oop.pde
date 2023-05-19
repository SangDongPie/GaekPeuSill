pencil a1, a2;
frog b1, b2;
bono c1, c2;
void setup(){
  size(1000,800);
  float x[];
  float y[];
  float s[];
  float vx[];
  float vy[];
  x = new float[5];
  y = new float[5];
  s = new float[5];
  vx = new float[5];
  vy = new float[5];
  for(int i=0; i<5; i++) {
    x[i] = 150*(1+random(5));
    y[i] = 150*(1+random(4));
    s[i] = 30*(1+random(5));
    vx[i] = 2*(1+random(-3,3));
    vy[i] = 2*(1+random(-3,3));
  }
  a1 = new pencil(x[0], y[0], s[0], vx[0], vy[0]);
  a2 = new pencil(x[1], y[1], s[1], vx[1], vy[1]);
  b1 = new frog (x[2], y[2], s[2], vx[2], vy[2]);
  b2 = new frog (mouseX, mouseY, s[2]);
  c1 = new bono (x[3], y[3], vx[3], vy[3]);
  c2 = new bono (x[4], y[4]);
  
}

void draw(){
  background(255);
  a1.display();
  a2.display();
  b1.display();
  b2.display();
  c1.display();
  c2.display();
}
