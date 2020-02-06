// Live free or let me die AMV

class BObject{
    int index;
    
    BObject(){
        index = -1;
    }
    BObject(int id){
        index = id;
    }
    int compareTo(BObject Bj){
        return this.compareTo(Bj.index);
    }
    int compareTo(int id){
        if(this.index < id){
            return -1;
        }
        else if(this.index > id){
            return 1;
        }
        return 0;
    }
}

class BTreeNode{
    int m;
    int contentSize = m - 1;
    BObject[] content;
    BTreeNode[] children;
    
    BTreeNode(int m_){
        m = m_;
        content = new BObject[m - 1];
        children = new BTreeNode[m];
    }
    
    BTreeNode(int m_, BObject Bj){
     m = m_;
     content = new BObject[m - 1];
     content[0] = Bj;
     children = new BTreeNode[m];
    }
    
    // Falta revisar funcionamiento
    void traverse(){
        int i = 0;
        while(i < contentSize){
            if(children[i] != null){
                children[i].traverse();
            }
            print(content[i]);
            i++;
            if(children[contentSize] != null){
                children[contentSize].traverse();
            }
        }
        
    }
    
    int indexInContent(BObject Bj){
        return 0;
    }
    
    void insertInContent(BObject Bj){
    
    }
    
    void insertInLeaves(BObject Bj){
    
    }
    
    void splitIntoContent(BObject Bj){
      
    }

    void insert(BObject Bj){
    
    }
    
    BObject find(int id){
        return null;
    }
}
