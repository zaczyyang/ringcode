int scale = 2;
String[] bits = new String[16];
String source = "I love you, Jade!";
String[] bytes = new String[32];


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
  
  for(int n = 0; n < 16; n++){
  bits[n] = "0000000000000000";
  }  
  
  for(int n = 0; n < 32; n++){
  bytes[n] = null;
  }  
  
  for(int i = 0; i < source.length(); i++){
  bytes[i] = binary(byte(source.charAt(i)), 8);
    if(i%2 == 1){
      bits[(i+1)/2 - 1] = bytes[i - 1] + bytes[i]; 
    }
  }



}



void draw(){
  float rd = 0;
  //int cirNum = scale * 8;

  for(int i = 0; i < 16; i++){
  rd = random(TAU);
  color c = decideColor(bits[i]);
  drawArc(i, rd, rd + decideAngle(bits[i]), c);
  }

}

void drawArc(int layer, float p1, float p2, color c){
  ellipseMode(CENTER);
  stroke(c);
  strokeWeight(20 / scale);
  noFill();
  int d = 0;

  //d = (30 + 24 / scale + layer * 32/scale) * 2;
  d = (32 + 10 / scale + layer * (20 / scale + 2)) * 2;
  arc(width/2, height/2, d, d, p1, p2);
}

float decideAngle(String bits){
  String bit4 = null;
  int unbi = 0;
  float angle = 0;

  if (bits.length() < 16){
    return 3 * 3.1415927;}
  else{
    bit4 = bits.substring(0, 4);
    unbi = unbinary(bit4);
    angle = PI / 8 * unbi;
    return angle;}
}

color decideColor(String bits){
  String bit12 = null;
  String[] every4 = new String[3];
  int r, g, b = 0;
  
  if (bits.length() < 16){
    return color(0, 0, 0);}
  else{
    bit12 = bits.substring(bits.length()-12, bits.length());
    every4[0] = hex(unbinary(bit12.substring(0, 4)), 1) + hex(unbinary(bit12.substring(0, 4)), 1);
    every4[1] = hex(unbinary(bit12.substring(4, 8)), 1) + hex(unbinary(bit12.substring(4, 8)), 1);
    every4[2] = hex(unbinary(bit12.substring(8, 12)), 1) + hex(unbinary(bit12.substring(8, 12)), 1);
    r = unhex(every4[0]);
    g = unhex(every4[1]);
    b = unhex(every4[2]);
    return color(r, g, b);  
  }
}
