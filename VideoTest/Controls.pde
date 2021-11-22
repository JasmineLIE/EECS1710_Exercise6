int thresholdDelta = 5;
int videoMode = 1;
void keyPressed() {
  switch(keyCode) {
    case UP:
      threshold += thresholdDelta;
      break;
    case DOWN:
      threshold -= thresholdDelta;
      break;
  }
  switch(keyCode) {
   case '1':
   videoMode = 1;
   break;
   case '2':
   videoMode = 2;
   break;
   case '3':
   videoMode = 3;
   break;
   case '4':
   videoMode = 4;
   break;
  }
  
  threshold = constrain(threshold, 0, 255);
  
  
}
