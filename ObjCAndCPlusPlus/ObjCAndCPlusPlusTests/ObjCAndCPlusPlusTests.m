//
//  ObjCAndCPlusPlusTests.m
//  ObjCAndCPlusPlusTests
//
//  Created by JULIAN OSORIO RAMIREZ on 23/12/24.
//

#import <XCTest/XCTest.h>
#import <ObjCAndCPlusPlus/EncryptHelper.h>

@interface ObjCAndCPlusPlusTests : XCTestCase

@end

@implementation ObjCAndCPlusPlusTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    EncryptHelper * helper = [EncryptHelper sharedHelper];
    NSString *output = [helper encrypt:@"Hello, World"];
    NSLog(output);
    XCTAssertNotNil(output);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
