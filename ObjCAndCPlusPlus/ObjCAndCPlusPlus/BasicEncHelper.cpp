//
//  BasicEncHelper.cpp
//  ObjCAndCPlusPlus
//
//  Created by JULIAN OSORIO RAMIREZ on 23/12/24.
//

#include "BasicEncHelper.hpp"
//hard coded key
string BasicEncHelper::key = "%#&";

string BasicEncHelper::encrypt(string message) {
    string output = message;
    int keyIndex = 0;
    for (int i = 0; i < message.size(); i++) {
        output[i] = message[i] ^ key[keyIndex];
        keyIndex++;
        if (keyIndex == key.size()) {
            keyIndex = 0;
        }
    }
    return output;
}
