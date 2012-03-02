//
//  UIImage+UnitTests.m
//  Rentify-iOS
//
//  Created by Mark Kirby on 02/02/2012.
//  Copyright (c) 2012 Hatch. All rights reserved.
//

#import "UIImage+UnitTests.h"
#import "NSObject+SupersequentImplementation.h"
#import "OCMock.h"

static UIImage *mockImage = nil;


@implementation UIImage (UnitTests)

+ (UIImage *)imageWithData:(NSData *)data
{
    if (mockImage != nil) {
        return mockImage;
    }
    return invokeSupersequent(data);
}

+(id)createMockImage {
    mockImage = [OCMockObject mockForClass:[UIImage class]];
    return mockImage;
}

+(id)createNiceMockImage {
    mockImage = [OCMockObject niceMockForClass:[UIImage class]];
    return mockImage;
}

+(void)releaseInstance {
    mockImage = nil;
}

@end
