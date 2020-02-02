byte[] encodeImage(PImage in){
 byte[] encoding = new byte[0];
 //create file header
 println("width) "+in.width+":"+byte(in.width));
 println("height) "+in.height+":"+byte(in.height));
 encoding = (byte[]) PApplet.append(encoding,byte(in.width));
 encoding = (byte[]) PApplet.append(encoding,byte(in.height));
 for(int k=0;k<in.pixels.length;k++){
    byte[] argb = toByteArray(in.pixels[k]);
    // println(argb);
    encoding = (byte[]) PApplet.append(encoding, byte(argb[0]));
    encoding = (byte[]) PApplet.append(encoding, byte(argb[1]));
    encoding = (byte[]) PApplet.append(encoding, byte(argb[2]));
    encoding = (byte[]) PApplet.append(encoding, byte(argb[3]));
    
 }
 // println(encoding);
 return encoding;
}


PImage decodeImage(byte[] fileInfo){
 //read header first 
 int imageWidth = (int) (fileInfo[0] & 0xFF);
 int imageHeight = (int) (fileInfo[1] & 0xFF);
 println("creating image of size: "+imageWidth+"x"+imageHeight);
 //create output image
 PImage out = createImage(imageWidth,imageHeight,ARGB);
 
 out.loadPixels();
 int cont = 0;
 for(int k = 2; k < fileInfo.length; k += 4){
     byte a = fileInfo[k];
     byte r = fileInfo[k+1];
     byte g = fileInfo[k+2];
     byte b= fileInfo[k+3];
     byte[] argb = {a, r, g, b};
     out.pixels[cont] = fromByteArray(argb);
     cont += 1;
 }
 out.updatePixels();
 return out;
}
