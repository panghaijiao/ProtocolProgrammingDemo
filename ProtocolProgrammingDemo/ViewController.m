//
//  ViewController.m
//  ProtocolProgrammingDemo
//
//  Created by haijiao on 15/12/20.
//  Copyright © 2015年 olinone. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ApiServiceProtocol.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)onGetRequestBtnClick:(id)sender {
    [self requestGetNetWithUrl:[NSURL URLWithString:@"www.olinone.com"] Param:nil];
}

- (IBAction)onPostRequestBtnClick:(id)sender {
    [self requestPostNetWithUrl:[NSURL URLWithString:@"www.shenmaip.com"] Param:nil];
}

@end
