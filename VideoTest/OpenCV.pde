import gab.opencv.*;

OpenCV openCV;

int threshold = 33;
boolean armOpenCvUpdate = false;
int scaler = 2;

void setupOpenCV(PImage img) { 
  openCV = new OpenCV(this, img);
}

void updateOpenCV(PImage img) {
  if (armOpenCvUpdate) {
    switch (videoMode) {
    case 1:
      openCV.loadImage(img);
      openCV.gray();
      openCV.threshold(threshold);
      armOpenCvUpdate = false;
      break;
    case 2:
      openCV.loadImage(img);
      openCV.gray();
      openCV.adaptiveThreshold(38, 1);
      img = openCV.getSnapshot();
      armOpenCvUpdate = false;
      break;
    case 3:
      openCV.loadImage(img);
      openCV.findScharrEdges(OpenCV.HORIZONTAL);
      openCV.findSobelEdges(1, 0);
      img = openCV.getSnapshot();


      armOpenCvUpdate = false;
      break;
    case 4:
      openCV.loadImage(img);
      openCV.findCannyEdges(threshold, 75);
      img = openCV.getSnapshot();
    }
  }
}
