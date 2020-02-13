// Implementacion Tablas 


// Revisar todo lo implementado por Camilo para dejar las 2 primeras clases funcionando full

class BObject {

  int ID;

  BObject() {
    ID = -1;
  }
  BObject(int id) {
    ID = id;
  }
  int compareTo(BObject Bj) {
    return this.compareTo(Bj.ID);
  }
  int compareTo(int id) {
    if (this.ID < id) {
      return -1;
    } else if (this.ID > id) {
      return 1;
    }
    return 0;
  }
}


class BObjectRegister {

  String fields [];
  String fieldValues [];


  BObjectRegister() {
    fields = new String[0];
    fieldValues = new String[0];
  }


  BObjectRegister(int id) {
    fields = new String[id];
    fieldValues = new String[id];
  }

  int getFieldIndex(String f) {
    boolean found = false;
    int index = -1;
    for (int i = 0; i < fields.length && !found; i++) {
      if (fields[i].compareTo(f) == 0) {
        index = i;
        found = true;
      }
    }
    return index;
  }
  String getFieldValue2(String f){
   int index = getFieldIndex(f);
   return index==-1?"FIELD NOT FOUND":fieldValues[index];
  }
  String getFieldValue(String f) {
    boolean found = false;
    String value = "FIELD NOT FOUND";
    for (int i = 0; i < fields.length && !found; i++) {
      if (fields[i] == f) {
        value = fieldValues[i];
        found = true;
      }
    }
    return value;
  }


  String getFieldValues(String[] fs) { 
    // fs es un string de campos separados por " "
    String [] aux = split(fs, ' ');
    String out = "";
    for (int i = 0; i < aux.length; i++) {
      String val = getFieldValue(aux[i]);
      out += val + " "; // revisar si algo
    }
    return out;
  }


  boolean isFieldEqualTo(String fieldName, String compareTo) {
    int index = getFieldIndex(fieldName);
    if(index == -1){
     return false;
    }else{
     return fieldValues[index].compareTo(compareTo) == 0;
    }
  }

  boolean isNumero(String palabra){
   return false;
  }
  int isFieldComparedTo(String fieldName, String compareTo) {
    int index = getFieldIndex(fieldName);
    if(index == -1){
     return -3; //no se puede encontar campo
    }
    String valorCampo = fieldValues[index];
    if(isNumero(valorCampo) && isNumero(compareTo)){
     float v1 = (new Float(fieldValues[index])).floatValue();
     float v2 = (new Float(compareTo)).floatValue();
     if(v1<v2){
      return -1;
     }else if(v1==v2){
      return 0;
     }else{
      return 1;
     }
    }else{
     return -2;//no se pueden comparar strings con numeros
    }
  }
}
