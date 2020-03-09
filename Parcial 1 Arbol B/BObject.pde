public class BObject{
 public int index;
 
 public BObject(){
  this.index = -1;
 }
 public BObject(int index){
  this.index = index;
 }
 public int compareTo(BObject bObj){
  if(index<bObj.index){
   return -1;
  }else if(index == bObj.index){
   return 0;
  }else{
   return 1;
  }
 }
 public String toString(){
  return index+" ";
 }
}
