//
//  ViewController.m
//  AFNetworking使用
//
//  Created by 张旭洋 on 2023/10/20.
//

#import "ViewController.h"
#import "URLRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    URLRequest* request = [[URLRequest alloc] init];
    [request dataLoader];
    
}


@end
