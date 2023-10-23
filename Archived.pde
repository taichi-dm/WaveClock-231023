void drawDisabledd() {
  _radiusNoise += 0.005;
  //_radius = (noise(_radiusNoise) * 550) + 1;
  
  //_radius = pow(cos(_radiusNoise) * 4, 4) + pow(cos(_radiusNoise) * 5, 2);
  _radius = pow(cos(_radiusNoise) * 10, 2);
  
  fill(255);
  rect(0, 0, 120, 60);
  
  fill(0);
  textSize(16);
  text(_radius, 10, 35);
  
  // _angleNoise += 0.005;
  // _angle += (noise(_angleNoise) * 6) - 3;
  _angle = sin(_radiusNoise) * 360;
  
  if (_angle > 360) { _angle -= 360; }
  if (_angle < 0) { _angle += 360; }
  
  _xNoise += 0.01;
  _yNoise += 0.01;
  
  float centerX = width / 2; // + (noise(_xNoise) * 100) - 50;
  float centerY = height / 2; // + (noise(_yNoise) * 100) - 50;
  
  float radian = radians(_angle);
  float x1 = centerX + (_radius * cos(radian));
  float y1 = centerY + (_radius * sin(radian));
  
  float oppositeRadian = radian + PI;
  float x2 = centerX + (_radius * cos(oppositeRadian));
  float y2 = centerY + (_radius * sin(oppositeRadian));
  
  //_strokeColor += _strokeChange;
  //if (_strokeColor > 254) { _strokeChange = -1; }
  //if (_strokeColor < 0) { _strokeChange = 1; }
  
  //stroke(_strokeColor, 60);
  stroke(30, 60);
  strokeWeight(1);
  line(x1, y1, x2, y2);
}
