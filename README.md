# Introduction

This library is to enhance the use of the [OCMock library](http://ocmock.org/), the Objective-C implementation of [mock objects](http://www.mockobjects.com/). 

One problem with OCMock is that is impossible to mock singletons such as NSNotificationCenter and NSDate, without going through the extra steps described in the article [Mocking Singletons with OCMock](http://twobitlabs.com/2011/02/mocking-singletons-with-ocmock/). This library takes the fundamentals of this blog post, and adds some custom categories for mocking various native objective-C singletons, such as NSNotificationCenter.

# Usage

To start using the library you can build it as a static library in the usual way, but a quick and easy method is as follows:

## Add the OCMock library

I have published instructions on one way to [add the OCMock Library to your project in Xcode 4](http://mark-kirby.co.uk/2012/how-to-install-static-frameworks-on-xcode-4/). 

## Copy the files across

Copy the files inside OCMockSingletonExtension into your project, making sure you add them to the Unit Testing target only.

## Import the headers needed and write your tests

* Import the header NSObject+SupersequentImplementation.h every time
* Import the header needed for the singleton you want to mock

	#import "NSObject+SupersequentImplementation.h"
	#import "NSNotificationCenter+UnitTests.h"

* Heres an example of how to use NSNotificationCenter+UnitTests

	- (void)testNSNotificationCenter
	{
		//Call the createMockNotificationCenter or createNiceMockNotificationCenter to return a mock object whenever you call defaultCenter
		id mockNotificationCenter = [NSNotificationCenter createMockNotificationCenter];
		//Now [NSNotificationCenter defaultCenter] will return the mockNotificationCenter
		STAssertEquals(mockNotificationCenter, [NSNotificationCenter defaultCenter], nil);
		//Now call releaseInstance so [NSNotificationCenter defaultCenter] will return the original defaultCenter again
		[NSNotificationCenter releaseInstance];
    
	}

# Contribute

Fork the project and add your own singletons to grow this.