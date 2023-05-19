class pencil{
  pencil(float _x, float _y, float _s, float _vx, float _vy){x = _x; y = _y; s = 3*_s; vx = _vx; vy = _vy;}
    float x, y, s, vx, vy;
    void display(){
      fill(255,200,0);
      quad(x,y,x,y+s,x+0.2*s,y+s,x+0.2*s,y);
      fill(255,100,0);
      triangle(x,y,x+0.1*s,y-0.1*s,x+0.2*s,y);
      fill(255,255,255);
      circle(x+0.05*s,y+0.2*s,0.07*s);
      circle(x+0.15*s,y+0.2*s,0.07*s);
      fill(0,0,0);
      ellipse(x+0.05*s,y+0.2*s,0.07*s,0.015*s);
      ellipse(x+0.15*s,y+0.2*s,0.07*s,0.015*s);
      fill(255,0,0);
      ellipse(x+0.1*s,y+0.6*s,0.15*s,0.075*s);
      fill(0);
      arc(x+0.1*s,y+0.3*s,0.1*s,0.1*s,0.5*PI,PI);
      if(x<0 || x>width) vx = - vx;
      if(y<0 || y>height) vy = - vy;
      x = x+vx;
      y = y+vy;
    }
}

class frog {
  frog(float _x, float _y, float _s, float _vx, float _vy ) {
    x = _x;
    y = _y;
    s = _s;
    vx = _vx;
    vy = _vy;
  }
  float x, y, s, vx, vy;
  
  frog(float _x, float _y, float _s){
    x = _x;
    y = _y;
    s = _s;
    vx=0;
  }
  
  void display() {
    fill(133,200,130);
    ellipse(x+s,y+s*2,s,s);
    fill(160,190,50);
    ellipse(x+s*0.6,y+s*0.6,s*0.4,s);
    ellipse(x+s*1.4,y+s*0.6,s*0.4,s);
    fill(100,189,60);
    circle(x+s,y+s,s);
    fill(255,255,255);
    circle(x+s*0.6,y+s*0.6,s*0.45);
    circle(x+s*1.4,y+s*0.6,s*0.45);
    fill(0,0,0);
    circle(x+s*0.6,y+s*0.6,s*0.2);
    circle(x+s*1.4,y+s*0.6,s*0.2);
    fill(100,150,68);
    circle(x+s*1.07,y+s*0.9,s*0.08);
    circle(x+s*0.93,y+s*0.9,s*0.08);
    fill(200,60,60);
    ellipse(x+s,y+s*1.3,s,s*0.5);
    x+=vx;
    y+=vy;
    if (vx==0){x=mouseX-s; y=mouseY-s;}
    if(x<0 || x>width) vx = - vx;
   if(y<0 || y>height) vy = - vy;
  }
}
class bono {
  bono(float _x, float _y, float _vx, float _vy) {
    x = _x;
    y = _y;
    vx = _vx;
    vy = _vy;
  }
  
 bono(float _x, float _y){
   x = _x;
   y = _y;
   vx=0;
   a=1;
 }
 float x, y, vx, vy;
 int a;
  
  void move(){
   if(a==1){
     if(vx!=0 || vy!=0){vx=0;vy=0;}
     if(keyPressed){
       if(key=='w')vy=-30;
       if(key=='a')vx=-30;
       if(key=='s')vy=30;
       if(key=='d')vx=30;
     }
   }
   else
   {
   if(x<0 || x>width) vx = - vx;
   if(y<0 || y>height) vy = - vy;
   }
   x += vx;
   y += vy;
  }
  
  void display() {
    //face
    fill(170, 210, 230);
    circle(x, y+30, 300);
    // eye
    fill(0,0,0);
    circle(x-100, y, 20);
    circle(x+90, y, 20);
    //nose
    circle(x,y+50,50);
    //mouse
    fill(255,255,255);
    ellipse(x+35,y+70,70,50);
    ellipse(x-35,y+70,70,50);
    move();
    }
}
