#include "BTable.hpp"

#include <iostream>
#include <string>
#include <vector>

using namespace std;


// Para BObject

BObject:: BObject(){
    ID = -1;
}

BObject:: BObject(int id){
    ID = id;
}

int BObject:: compareTo(BObject Bj){
    return this.compareTo(Bj.ID);
}

int BObject:: compareTo(int id){
    if(this.ID < id){
        return -1;
    }
    else if(this.ID > id){
        return 1;
    }
    return 0; // Si son iguales
}


// Para BObjectRegister

BObjectRegister:: BObjectRegister(){
    fields = {};
    fieldValues = {};
}

BObjectRegister:: BObjectRegister(int id){
    ID = id;
    fields = {};
    fieldValues = {};
}

string BObjectRegister:: getFieldValue(string f){
    bool found = false;
    string value = "FIELD NOT FOUND. ";
    for(int i = 0; i < fields.size() && !found; i++){
        if(fields[i].compare(f) == 0){
            value = fieldValues[i];
            found = true;
        }
    }
    return value;
}

vector<string> BObjectRegister:: getFieldsValues(vector<string> fs){
    vector<string> values;
    string val;
    for(unsigned i = 0; i < fs.size(); i++){
        val = getFieldValue(fs[i]);
        values.push_back(val);
    }
    return values;
}
