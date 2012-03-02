//
//  NSNotificationCenter+UnitTests.m
//  Rentify-iOS
//
//  Created by Mark Kirby on 24/01/2012.
//  Copyright (c) 2012 Hatch. All rights reserved.
//

#import "NSNotificationCenter+UnitTests.h"
#import "NSObject+SupersequentImplementation.h"
#import "OCMock.h"

static NSNotificationCenter *mockNotificationCenter = nil;

@implementation NSNotificationCenter (UnitTests)

+ (id)defaultCenter {
    if (mockNotificationCenter != nil) {
        return mockNotificationCenter;
    }
    return invokeSupersequentNoParameters();
}

+(id)createMockNotificationCenter {
    mockNotificationCenter = [OCMockObject mockForClass:[NSNotificationCenter class]];
    return mockNotificationCenter;
}

+(id)createNiceMockNotificationCenter {
    mockNotificationCenter = [OCMockObject niceMockForClass:[NSNotificationCenter class]];
    return mockNotificationCenter;
}

+(void)releaseInstance {
    mockNotificationCenter = nil;
}

@end
