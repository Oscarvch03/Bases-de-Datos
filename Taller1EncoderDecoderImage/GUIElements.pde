//selected pixel info
int px = -1;
int py = -1;

void plotImages() {
  if (original!= null) {
    image(original, 0, 0, width/2, height);
    if (px !=-1 && py !=-1) {
      HUD();
    }
  }
  if (loaded != null) {
    image(loaded, width/2, 0, width/2, height);
  }
}
void collectPixel() {
  if (mouseX<width/2 && original != null) {
    float u = (float) mouseX / (float) (width/2);
    float v = (float) mouseY / (float) (height);
    px = floor(u*original.width);
    py = floor(v*original.height);
  } else {
    px = -1;
    py = -1;
  }
}
void HUD() {
  color selected = original.get(px, py);
  byte[] byteInfo = toByteArray(selected);
  fill(255, 0, 0);
  text("RGBA byte info: A:" +byteInfo[0]+" R:"+byteInfo[1]+" G:"+byteInfo[2]+" B:"+byteInfo[3],width*0.01,textAscent());
  text("RGBA binary info: A:" +binary(byteInfo[0])+" R:"+binary(byteInfo[1])+" G:"+binary(byteInfo[2])+" B:"+binary(byteInfo[3]),width*0.01,2*textAscent());
  text("RGBA char info: A:" +char(byteInfo[0])+" R:"+char(byteInfo[1])+" G:"+char(byteInfo[2])+" B:"+char(byteInfo[3]),width*0.01,3*textAscent());
}
