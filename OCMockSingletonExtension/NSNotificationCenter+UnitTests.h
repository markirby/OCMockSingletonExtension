//
//  NSNotificationCenter+UnitTests.h
//  Rentify-iOS
//
//  Created by Mark Kirby on 24/01/2012.
//  Copyright (c) 2012 Hatch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNotificationCenter (UnitTests) 

+(id)createMockNotificationCenter;
+(id)createNiceMockNotificationCenter;
+(void)releaseInstance;

@end
