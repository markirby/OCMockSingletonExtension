//
//  UIImage+UnitTests.h
//  Rentify-iOS
//
//  Created by Mark Kirby on 02/02/2012.
//  Copyright (c) 2012 Hatch. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImage (UnitTests)

+(id)createMockImage;
+(id)createNiceMockImage;
+(void)releaseInstance;

@end
