//
//  NSUserDefaults+UnitTests.m
//  OCMockSingletonExtension
//
//  Created by Paul Booth on 08/04/2014.
//
//

#import "NSUserDefaults+UnitTests.h"
#import "NSObject+SupersequentImplementation.h"
#import "OCMock.h"

static NSUserDefaults *mockUserDefaults = nil;

@implementation NSUserDefaults (UnitTests)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"
+ (id)standardUserDefaults {
  if (mockUserDefaults != nil) {
    return mockUserDefaults;
  }
  return invokeSupersequentNoParameters();
}
#pragma clang diagnostic pop

+(id)createMockUserDefaults {
  mockUserDefaults = [OCMockObject mockForClass:[NSUserDefaults class]];
  return mockUserDefaults;
}

+(id)createNiceMockUserDefaults {
  mockUserDefaults = [OCMockObject niceMockForClass:[NSUserDefaults class]];
  return mockUserDefaults;
}

+(void)releaseInstance {
  mockUserDefaults = nil;
}


@end
