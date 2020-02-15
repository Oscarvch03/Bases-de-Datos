#ifndef _BTABLE_HPP
#define _BTABLE_HPP

#include <iostream>
#include <string>
#include <vector>

using namespace std;

class BObject{

    int ID;

    BObject();
    BObject(ind id);

    int compareTo(BObject Bj);
    int compareTo(int id);

};


class BObjectRegister : public BObject{

    // string fields [];
    // string fieldValues [];
    vector<string> fields;
    vector<string> fieldValues;


    BObjectRegister();
    BObjectRegister(int id);

    string getFieldValue(string f);
    vector<string> getFieldsValues(string vector<string> fs);
    bool isFieldEqualTo(string fieldName, string compareTo);
    int isFieldComparedTo(string fieldName, string compareTo);

    // Aditional
    void displayTable();

};


class BObjectTable{

    vector<BObject> tuples;
    vector<string> fields;
    int numRegisters;

    BObjectTable();
    BObjectTable(vector<string> fields);

    int addRegister(vector<string> fieldValues);
    vector<string> getFields(vector<string> fields);
    vector<string> getFieldsWhereEquals(vector<string> fields, vector<string> fieldsEquals);
    vector<string> getFieldsWhereCompare(vector<string> fields, vector<string> fieldsCompare, vector<char> relation);
    BObjectTable crossProduct(BObjectTable table);
    BObjectTable naturalJoin(BObjectTable table);

}

#endif
