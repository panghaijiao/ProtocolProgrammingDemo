//
//  NSObject+ApiServiceProtocol.h
//  ProtocolProgrammingDemo
//
//  Created by haijiao on 15/12/20.
//  Copyright © 2015年 olinone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ApiServiceProtocol)

- (void)requestGetNetWithUrl:(NSURL *)url Param:(NSDictionary *)param;
- (void)requestPostNetWithUrl:(NSURL *)url Param:(NSDictionary *)param;

@end
