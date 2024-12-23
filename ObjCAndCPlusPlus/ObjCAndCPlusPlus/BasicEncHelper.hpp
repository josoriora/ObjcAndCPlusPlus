//
//  BasicEncHelper.hpp
//  ObjCAndCPlusPlus
//
//  Created by JULIAN OSORIO RAMIREZ on 23/12/24.
//

#ifndef BasicEncHelper_hpp
#define BasicEncHelper_hpp

#include <stdio.h>
#include <string>

using namespace std;

class BasicEncHelper {
private:
    static string key;
public:
    static string encrypt(string message);
};

#endif /* BasicEncHelper_hpp */
