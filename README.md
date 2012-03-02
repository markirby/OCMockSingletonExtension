# Introduction

This library is to enhance the use of the [OCMock library](http://ocmock.org/), the Objective-C implementation of [mock objects](http://www.mockobjects.com/). 

One problem with OCMock is that is impossible to mock singletons such as NSNotificationCenter and NSDate, without going through the extra steps described in the article [Mocking Singletons with OCMock](http://twobitlabs.com/2011/02/mocking-singletons-with-ocmock/). This library takes the fundamentals of this blog post, and adds some custom categories for mocking various native objective-C singletons, such as NSNotificationCenter.
