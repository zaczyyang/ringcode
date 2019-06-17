int scale = 2;
String bit13 = "0000101010001";

void setup(){
  //fullScreen();
  size(800, 600);
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
  float rd = 0;
  int cirNum = scale * 8;

  for(int i = 0; i < cirNum; i++){
  rd = random(TAU);
  drawArc(i, rd, rd + decideAngle(bit13));
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
  String bit5 = null;
  int unbi = 0;
  float angle = 0;

  if (bit13.length() != 13){
    return 3 * 3.1415927;}
  else{
    bit5 = bit13.substring(0, 5);
    unbi = unbinary(bit5);
    angle = PI / 16 * unbi;
    return angle;}   
}
