float s,t,u,v,w,x;
void setup(){
  size(230,500);
  s=100;
  t=s/2;
  u=3*s;
  v=1.3*s;
  w=2*s;
  x=(s+v)/2;
  pencil();
}
void pencil(){
  fill(255,200,0);
  quad(s,t,s,u,v,u,v,t);
  fill(255,100,0);
  triangle(s,u,v,u,x,1.1*u);
  fill(255,255,255);
  circle(1.08*s,0.7*s,0.2*s);
  circle(0.95*v,0.7*s,0.2*s);
  fill(0,0,0);
  ellipse(1.08*s,0.7*s,0.2*s,0.05*s);
  ellipse(0.95*v,0.7*s,0.2*s,0.05*s);
  fill(255,255,255);
  circle(1.08*s,0.7*s,0.07*s);
  circle(0.95*v,0.7*s,0.07*s);
  arc(1.15*s,s,t,t,0,PI/6);
  fill(255,0,0);
  ellipse(1.15*s,w,0.2*s,s);

}
