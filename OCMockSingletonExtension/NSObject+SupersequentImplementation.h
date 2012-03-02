//
//  NSObject+SupersequentImplementation.h
//  http://cocoawithlove.com/2008/03/supersequent-implementation.html
//

#import <Foundation/Foundation.h>

#define invokeSupersequent(...) \
([self getImplementationOf:_cmd \
after:impOfCallingMethod(self, _cmd)]) \
(self, _cmd, ##__VA_ARGS__)

#define invokeSupersequentNoParameters() \
([self getImplementationOf:_cmd \
after:impOfCallingMethod(self, _cmd)]) \
(self, _cmd)

@interface NSObject (SupersequentImplementation)

- (IMP) getImplementationOf:(SEL)lookup after:(IMP)skip;
IMP impOfCallingMethod(id lookupObject, SEL selector);

@end