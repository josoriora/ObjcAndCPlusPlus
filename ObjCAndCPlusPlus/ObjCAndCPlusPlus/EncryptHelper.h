//
//  EncryptHelper.h
//  ObjCAndCPlusPlus
//
//  Created by josoriora on 23/12/24.
//

#ifndef EncryptHelper_h
#define EncryptHelper_h
#import <Foundation/Foundation.h>

@interface EncryptHelper : NSObject
@property (nonatomic, strong) NSString *key;

+(instancetype) sharedHelper;

-(NSObject*) encrypt:(NSObject*) obj;
-(NSObject*) decrypt:(NSObject*) obj;

@end

#endif /* EncryptHelper_h */
