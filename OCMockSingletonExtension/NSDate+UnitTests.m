//
//  NSDate+UnitTests.m
//  Rentify-iOS
//
//  Created by Mark Kirby on 30/01/2012.
//  Copyright (c) 2012 Hatch. All rights reserved.
//

#import "NSDate+UnitTests.h"
#import "NSObject+SupersequentImplementation.h"
#import "OCMock.h"

static NSDate *mockDate = nil;

@implementation NSDate (UnitTests)

+ (NSDate *)date {
    if (mockDate != nil) {
        return mockDate;
    }
    return invokeSupersequentNoParameters();
}

+(id)createMockDate {
    mockDate = [OCMockObject mockForClass:[NSDate class]];
    return mockDate;
}

+(id)createNiceMockDate {
    mockDate = [OCMockObject niceMockForClass:[NSDate class]];
    return mockDate;
}

+(void)releaseInstance {
    mockDate = nil;
}


@end
