//
//  NSUserDefaults+UnitTests.h
//  OCMockSingletonExtension
//
//  Created by Paul Booth on 08/04/2014.
//
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (UnitTests)

+(id)createMockUserDefaults;
+(id)createNiceMockUserDefaults;
+(void)releaseInstance;

@end
