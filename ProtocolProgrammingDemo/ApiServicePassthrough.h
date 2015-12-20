//
//  ApiServicePassthrough.h
//  ProtocolProgrammingDemo
//
//  Created by haijiao on 15/12/20.
//  Copyright © 2015年 olinone. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ApiServiceProtocol <NSObject>

- (void)requestNetWithUrl:(NSURL *)url Param:(NSDictionary *)param;

@end

@protocol ApiService <ApiServiceProtocol>

// private functions

@end

@interface ApiServicePassthrough : NSObject

@property (nonatomic, strong) NSURL        *url;
@property (nonatomic, strong) NSDictionary *param;

- (instancetype)initWithApiService:(id<ApiService>)apiService;
- (void)execNetRequest;

@end
