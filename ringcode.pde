int scale = 4;

void setup(){
  fullScreen();
  //size(400, 300);
  background(255);
  noStroke();
  fill(0);
  translate(width/2, height/2);
  circle(0, 0, 60);
  
  stroke(255);
  strokeWeight(12);
  line(0, 0, 0, -30);
  line(0, 0, -30, 0);
  line(0, 0, 30, 30);
  noLoop();
 
}



void draw(){
  int f1, f2, f = 0;
  float rd = 0;
  int prec = scale * 4;
  int cirNum = scale * 8;

  for(int i = 0; i < cirNum; i++){
  f1 = int(random(prec));
  f2 = int(random(prec));
  f = min(f1, f2);
  f2 = max(f1, f2);
  f1 = f;
  rd = random(TAU);
  drawArc(i, f1 * PI * 1/prec + rd, (f2 + 1) * PI * 1/prec + rd);   
  }
   
}

void drawArc(int layer, float p1, float p2){
  ellipseMode(CENTER);
  float r, g, b = 0;
  r = random(255);
  g = random(255);
  b = random(255);


  stroke(r, g, b);
  strokeWeight(20 / scale);
  noFill();
  int d = 0;

  //d = (30 + 24 / scale + layer * 32/scale) * 2;
  d = (32 + 10 / scale + layer * (20 / scale + 2)) * 2;
  arc(width/2, height/2, d, d, p1, p2);
}

float decideAngle(String bit13){
  int[] bit5 = new int[5];
  
  if (bit13.length() != 13){
    return 0;}
  else{
    for(int i = 0; i < 5; i++){
      bit5[i] = bit13.charAt(i);
    }
  
  }

}
