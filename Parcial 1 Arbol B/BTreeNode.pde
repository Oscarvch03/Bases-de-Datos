public class BTreeNode {
  public int m; 
  public int contentSize;
  public boolean isLeaf;
  public BObject[] content;
  public BTreeNode[] children;

  public BTreeNode(int m) {
    this.m = m;
    this.contentSize = 0;
    this.isLeaf = true;
    this.content = new BObject[m-1];
    this.children = new BTreeNode[m];
  }
  
  /* INSERTAR SU CÓDIGO AQUÍ*/  // Me confundi :c
  public void inverse_traverse() {
      for (int i=contentSize-1; i>=0; i--) {
        if (children[i+1] != null) {
          print("[");
          children[i+1].inverse_traverse();
          print("]");
        }
        print(content[i]);
        if (i>0) {
          print(" ");
        }
    }
    if (children[0] != null) {
      print("[");
      children[0].inverse_traverse();
      print("]");
    }
 }
  
  
  /*NO MODIFICAR DE AQUÍ HACIA ABAJO*/
  public void traverse() {
    for (int i=0; i<contentSize; i++) {
      if (children[i] != null) {
        print("[");
        children[i].traverse();
        print("]");
      }
      print(content[i]);
      if (i<contentSize-1) {
        print(" ");
      }
    }
    if (children[contentSize] != null) {
      print("[");
      children[contentSize].traverse();
      print("]");
    }
  }
  public int indexInContent(BObject obj) {
    if (contentSize==0) {
      return 0;
    } 
    int index = contentSize-1;
    while (index >=0 && content[index].compareTo(obj)>=0) {
      index--;
    }
    return index;
  }
  public boolean isFull() {
    return contentSize == content.length;
  }

  public void insertInContent(BObject obj) {
    if (contentSize == 0) {
      content[0] = obj;
      contentSize++;
    } else {
      int index = indexInContent(obj);
      int i=contentSize-1;
      while (i>index) {
        content[i+1] = content[i];
        i--;
      }
      content[i+1] = obj;
      contentSize++;
    }
  }
  public BTreeNode splitTreeBy(BObject obj) {
    int index = indexInContent(obj);
    int midPos = floor(m/2);
    BObject newRoot;
    BTreeNode left = new BTreeNode(m);
    BTreeNode right = new BTreeNode(m);
    if (index == midPos) {
      newRoot = obj;
      for (int i=0; i<content.length; i++) {
        if (newRoot.compareTo(content[i])>0) {
          left.insertInContent(content[i]);
        } else {
          right.insertInContent(content[i]);
        }
      }
    } else {
      newRoot = content[midPos];
      if (newRoot.compareTo(obj)>0) {
        left.insertInContent(obj);
      } else {
        right.insertInContent(obj);
      }
      for (int i=0; i<content.length; i++) {
        if (i<midPos) {
          left.insertInContent(content[i]);
        } else if (i>midPos) {
          right.insertInContent(content[i]);
        }
      }
    }
    BTreeNode subdividedTree = new BTreeNode(m);
    subdividedTree.content[0] = newRoot;
    subdividedTree.children[0] = left;
    subdividedTree.children[1] = right;
    subdividedTree.contentSize = 1;
    return subdividedTree;
  }
  public void growTowardsRoot(BTreeNode subTree) {
    int childIndex = indexInContent(subTree.content[0]);
    childIndex = childIndex<0? 0: childIndex;
    int i = contentSize-1;
    while(i>childIndex){
     content[i+1] = content[i];
     children[i+1] = children[i];
    }
    content[i+1] = subTree.content[0];
    children[i+1] = subTree.children[0];
    children[i+2] = subTree.children[1];
    contentSize++;
  }
  public void insertInChildren(BObject obj){
   int index = indexInContent(obj);
   index = index<0?0:index;
   //must insert in left child
   if(content[index].compareTo(obj)>0){
    if(children[index] == null){
     children[index] = new BTreeNode(m);
     children[index].insert(obj);
    }else if(children[index].isFull()){ 
     if(!isFull()){
      BTreeNode childTree = children[index].splitTreeBy(obj);
      growTowardsRoot(childTree);
     }
    }else{
     children[index].insert(obj);
    }
   }else{
    if(children[index+1] == null){
     children[index+1] = new BTreeNode(m);
     children[index+1].insert(obj);
    }else if(children[index+1].isFull()){
     if(!isFull()){ 
      BTreeNode childTree = children[index+1].splitTreeBy(obj);
      growTowardsRoot(childTree);
     }
    }else{
     children[index+1].insert(obj);
    }
   }
  }
  
  public void insert(BObject obj) {
    if (isLeaf) {
      if (!isFull()) {
        insertInContent(obj);
      } else {
        BTreeNode subivided = splitTreeBy(obj);
        content = new BObject[m];
        content[0] = subivided.content[0];
        children[0] = subivided.children[0];
        children[1] = subivided.children[1];
        contentSize = 1;
        isLeaf = false;
      }
    } else { //is not leaf
      insertInChildren(obj);
    }
  }
}
