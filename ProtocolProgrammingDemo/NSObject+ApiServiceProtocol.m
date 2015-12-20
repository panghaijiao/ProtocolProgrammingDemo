//
//  NSObject+ApiServiceProtocol.m
//  ProtocolProgrammingDemo
//
//  Created by haijiao on 15/12/20.
//  Copyright © 2015年 olinone. All rights reserved.
//

#import "NSObject+ApiServiceProtocol.h"
#import "ApiServicePassthrough.h"
#import "GetApiService.h"
#import "PostApiService.h"
#import "JSObjection.h"

@implementation NSObject (ApiServiceProtocol)

- (void)requestGetNetWithUrl:(NSURL *)url Param:(NSDictionary *)param {
    id<ApiService> apiSrevice = [[JSObjection createInjector] getObject:[GetApiService class]];
    ApiServicePassthrough *apiServicePassthrough = [[ApiServicePassthrough alloc] initWithApiService:apiSrevice];
    apiServicePassthrough.url = url;
    apiServicePassthrough.param = param;
    [apiServicePassthrough execNetRequest];
}

- (void)requestPostNetWithUrl:(NSURL *)url Param:(NSDictionary *)param {
    id<ApiService> apiSrevice = [[JSObjection createInjector] getObject:[PostApiService class]];
    ApiServicePassthrough *apiServicePassthrough = [[ApiServicePassthrough alloc] initWithApiService:apiSrevice];
    apiServicePassthrough.url = url;
    apiServicePassthrough.param = param;
    [apiServicePassthrough execNetRequest];
}

@end
