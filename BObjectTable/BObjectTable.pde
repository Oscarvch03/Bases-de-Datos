// Implementacion Tablas 

class BObject{
  
    int ID;
    
    BObject(){
        ID = -1;
    }
    BObject(int id){
        ID = id;
    }
    int compareTo(BObject Bj){
        return this.compareTo(Bj.ID);
    }
    int compareTo(int id){
        if(this.ID < id){
            return -1;
        }
        else if(this.ID > id){
            return 1;
        }
        return 0;
    }
}


class BObjectRegister{
        String fields [];
        String fieldValues [];
        
        BObjectRegister(){
            fields = new String[0];
            fieldValues = new String[0];
        }
        
        
}
