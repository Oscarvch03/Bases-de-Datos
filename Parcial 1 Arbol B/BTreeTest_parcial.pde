PImage field;
BTreeNode myTree;
void setup(){
 size(400,400,P3D);
 myTree = new BTreeNode(5);
 int[] indices = new int[]{7,4,2,1,5,6,8,9,3,15};
 for(int i=0;i<indices.length;i++){
  myTree.insert(new BObject(indices[i]));
 }
 //punto del parcial:
 println("recorrido descendente:");
 myTree.inverse_traverse();
 
 //recorrido tradicional
 println("recorrido ascendente");
 myTree.traverse();
}
void draw(){
 background(255);
}
