//inputs and outputs from program
PImage original;
PImage loaded;
String binaryExtension = ".bla";
String nameToSave = "test";
String nameToLoad = "testcp";
void setup(){
 arreglarBla();
 size(400,200);
 original = loadImage("escanor.jpg");
 println("original image loaded");
 println("image dimensions: "+original.width +"x"+original.height);
 println("image dimensions: "+binary(byte(original.width)) +"x"+binary(byte(original.height)));
}
void mousePressed(){
 collectPixel();
 // byte[] aux = encodeImage(original);
 // PImage nueva = decodeImage(aux);
}
void keyPressed(){
 if(key == 's' || key == 'S'){
  if(original != null){
   if(!nameToSave.equals("")){
     println("encoding original image: ");
     byte[] binaryImageEncoding = encodeImage(original);
     saveBytes(nameToSave+binaryExtension,binaryImageEncoding);
     println("saved image. Byte extension: "+binaryImageEncoding.length);
   }
  }
 }
 if(key == 'd' || key == 'D'){
  if(!nameToLoad.equals("")){
   byte[] fileContent = loadBytes(nameToLoad+binaryExtension);
   println("byte file size: "+fileContent.length);
   if(fileContent.length%4 != 2){
    println("file header is corrupt");
   }else if((fileContent.length-2)%4 != 0){
     println("file content is corrupt");
   }else{
    println("loading binary file data"); 
    loaded = decodeImage(fileContent);
    println("image decoded");
   }
  }
 }
}

void arreglarBla(){
    byte[] fileContent = loadBytes("testcp.bla");
    println("byte file size: "+fileContent.length);
    byte[] nuevo = {};
    for(int i = 0; i < 160002; i++){
        println(i);
        nuevo[i] = fileContent[i];
    }
    saveBytes("testarreglado.bla",nuevo);
    
}

void draw(){
 background(150);
 plotImages();
 
}
