//
//  EncryptHelper.m
//  ObjCAndCPlusPlus
//
//  Created by JULIAN OSORIO RAMIREZ on 23/12/24.
//

#import "EncryptHelper.h"
#include "BasicEncHelper.hpp"

@implementation EncryptHelper

+(instancetype) sharedHelper {
    static EncryptHelper *sharedHelper = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedHelper = [[self alloc] init];
    });
    return sharedHelper;
}

-(NSString*) encrypt:(NSString*)message {
    //get std::string from NSString
    string cppMessage = string([message UTF8String]);
    //run the encrypt function in C++ class normally
    string encryptedMessage = BasicEncHelper::encrypt(cppMessage);
    //get NSString from std::string
    const char* encryptedMessageInC = encryptedMessage.c_str();
    return [NSString stringWithCString:encryptedMessageInC              encoding:NSUTF8StringEncoding];
}

-(NSString *)decrypt:(NSString *)message {
    return nil;
}

@end
