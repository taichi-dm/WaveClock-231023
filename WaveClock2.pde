float _angleNoise, _radiusNoise;
float _xNoise, _yNoise;
float _angle = -PI / 2;
float _radius;
float _strokeColor = 254;
int _strokeChange = -1;

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
  
  for (int i = 0; i <= 5000; i += 1) {
    _radiusNoise += 0.001;
    _radius = pow(cos(_radiusNoise) * 10, 2);

    _angle = sin(_radiusNoise) * 360;
    if (_angle > 360) { _angle -= 360; }
    if (_angle < 0) { _angle += 360; }
  
    _xNoise += 0.01;
    _yNoise += 0.01;

    float centerX = width / 2 + (cos(_xNoise) * 100) - 50;
    float centerY = height / 2 + (sin(_yNoise) * 100) - 50;
    
    float radian = radians(_angle);
    float x1 = centerX + (_radius * cos(radian));
    float y1 = centerY + (_radius * sin(radian));
    
    float oppositeRadian = radian + PI;
    float x2 = centerX + (_radius * cos(oppositeRadian));
    float y2 = centerY + (_radius * cos(oppositeRadian));

    stroke(30, 60);
    strokeWeight(1);
    line(x1, y1, x2, y2);
  }
  
  save("generated/sketch-" + timestamp() + ".png"); 
}

void draw() {
  
}
