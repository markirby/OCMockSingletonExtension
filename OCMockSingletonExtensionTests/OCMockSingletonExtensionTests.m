//
//  OCMockSingletonExtensionTests.m
//  OCMockSingletonExtensionTests
//
//  Created by Mark Kirby on 02/03/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "OCMockSingletonExtensionTests.h"
#import "OCMock.h"
#import "NSObject+SupersequentImplementation.h"
#import "NSDate+UnitTests.h"
#import "NSNotificationCenter+UnitTests.h"
#import "UIImage+UnitTests.h"

@implementation OCMockSingletonExtensionTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testNSDate
{
    id mockNSDate = [NSDate createMockDate];
    STAssertEquals(mockNSDate, [NSDate date], nil);
    [NSDate releaseInstance];
    
    STAssertFalse(mockNSDate == [NSDate date], nil);
}

- (void)testNSNotificationCenter
{
    id mockNotificationCenter = [NSNotificationCenter createMockNotificationCenter];
    STAssertEquals(mockNotificationCenter, [NSNotificationCenter defaultCenter], nil);
    [NSNotificationCenter releaseInstance];
    
    STAssertFalse(mockNotificationCenter == [NSNotificationCenter defaultCenter], nil);
}

- (void)testUIImage
{
    id mockUIImage = [UIImage createMockImage];
    id mockNSData = [OCMockObject niceMockForClass:[NSData class]];
    STAssertEquals(mockUIImage, [UIImage imageWithData:mockNSData], nil);
    [UIImage releaseInstance];
    
    STAssertFalse(mockUIImage == [UIImage imageWithData:mockNSData], nil);
}

@end
