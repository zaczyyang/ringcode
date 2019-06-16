int scale = 2;
String bits = "0000101010001";

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
  float rd = 0;
  int cirNum = scale * 8;

  for(int i = 0; i < cirNum; i++){
  rd = random(TAU);
  drawArc(i, rd, rd + decideAngle(bits));
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

  if (bit13.length() != 13){
    return 3 * 3.1415927;}
  else{
    bit5 = bit13.substring(0, 4);


  switch(bit5){
    case "00000":
      return 0;
    case "00001":
      return 3.1415927 / 16;
    case "00010":
      return 3.1415927 / 16 * 2;
    case "00011":
      return 3.1415927 / 16 * 3;
    case "00100":
      return 3.1415927 / 16 * 4;
    case "00101":
      return 3.1415927 / 16 * 5;
    case "00110":
      return 3.1415927 / 16 * 6;
    case "00111":
      return 3.1415927 / 16 * 7;
    case "01000":
      return 3.1415927 / 16 * 8;
    case "01001":
      return 3.1415927 / 16 * 9;
    case "01010":
      return 3.1415927 / 16 * 10;
    case "01011":
      return 3.1415927 / 16 * 11;
    case "01100":
      return 3.1415927 / 16 * 12;
    case "01101":
      return 3.1415927 / 16 * 13;
    case "01110":
      return 3.1415927 / 16 * 14;
    case "01111":
      return 3.1415927 / 16 * 15;
    case "10000":
      return 3.1415927;
    case "10001":
      return 3.1415927 + 3.1415927 / 16;
    case "10010":
      return 3.1415927 + 3.1415927 / 16 * 2;
    case "10011":
      return 3.1415927 + 3.1415927 / 16 * 3;
    case "10100":
      return 3.1415927 + 3.1415927 / 16 * 4;
    case "10101":
      return 3.1415927 + 3.1415927 / 16 * 5;
    case "10110":
      return 3.1415927 + 3.1415927 / 16 * 6;
    case "10111":
      return 3.1415927 + 3.1415927 / 16 * 7;
    case "11000":
      return 3.1415927 + 3.1415927 / 16 * 8;
    case "11001":
      return 3.1415927 + 3.1415927 / 16 * 9;
    case "11010":
      return 3.1415927 + 3.1415927 / 16 * 10;
    case "11011":
      return 3.1415927 + 3.1415927 / 16 * 11;
    case "11100":
      return 3.1415927 + 3.1415927 / 16 * 12;
    case "11101":
      return 3.1415927 + 3.1415927 / 16 * 13;
    case "11110":
      return 3.1415927 + 3.1415927 / 16 * 14;
    case "11111":
      return 3.1415927 + 3.1415927 / 16 * 15;
    }
  }
  }
