float _angleNoise, _radiusNoise;
float _xNoise, _yNoise;
float _angle = -PI / 2;
float _radius;
float _strokeColor = 254;
int _strokeChange = -1;

String startTimestamp = timestamp();

void setup() {
  size(1000, 1000);
  smooth();
  frameRate(30);
  background(255);
  noFill();
  
  _angleNoise = random(10);
  _radiusNoise = random(10);
  _xNoise = random(10);
  _yNoise = random(10);
}

void draw() {  
  _radiusNoise += 0.001;
  _radius = pow(cos(_radiusNoise) * 10 * sin(_radiusNoise) * 3, 2);
  
  _angle = sin(_radiusNoise) * 360;
  if (_angle > 360) { _angle -= 360; }
  if (_angle < 0) { _angle += 360; }
  
  _xNoise += 0.01;
  _yNoise += 0.01;
  
  float centerX = width / 2; // + (cos(_xNoise) * 100) - 50;
  float centerY = height / 2; // + (sin(_yNoise) * 100) - 50;
  
  float radian = radians(_angle);
  float x1 = centerX + (_radius * cos(25 / radian) * cos(3 * radian));
  float y1 = centerY + (_radius * sin(5 / radian));
  
  float oppositeRadian = radian + PI;
  float x2 = centerX + (_radius * cos(25 / oppositeRadian) * cos(3 * oppositeRadian));
  float y2 = centerY + (_radius * sin(5 / oppositeRadian));
  
  stroke(30, 60);
  strokeWeight(0.5);
  line(x1, y1, x2, y2);
  
  println("frameCount: " +  frameCount);
  
  if (frameCount % 500 == 0) {
    saveFrame("generated/sketch-" + startTimestamp + "/" + "frame-####" + ".png");
  }
  
  if (frameCount > 3500) {
    exit();
  }
}
