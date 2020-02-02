color fromByteArray(byte[] channs){
 int a = (int) channs[0] & 0xFF;
 int r = (int) channs[1] & 0xFF;
 int g = (int) channs[2] & 0xFF;
 int b = (int) channs[3] & 0xFF;
 return color(r,g,b,a);
}

byte[] toByteArray(color c){
 byte red = (byte) red(c); 
 byte green = (byte) green(c);
 byte blue = (byte) blue(c);
 byte alpha = (byte) alpha(c);
 return new byte[]{alpha,red,green,blue}; 
}
