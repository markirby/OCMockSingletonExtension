//
//  NSDate+UnitTests.h
//  Rentify-iOS
//
//  Created by Mark Kirby on 30/01/2012.
//  Copyright (c) 2012 Hatch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (UnitTests)

+(id)createMockDate;
+(id)createNiceMockDate;
+(void)releaseInstance;

@end
