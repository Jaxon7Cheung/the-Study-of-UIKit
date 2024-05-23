//
//  URLRequest.m
//  AFNetworking使用
//
//  Created by 张旭洋 on 2023/10/20.
//

#import "URLRequest.h"

@implementation URLRequest

- (void)dataLoader {
    NSString* stringURL = @"https://news-at.zhihu.com/api/4/story/8997528/long-comments";
    
    __unused NSURL* url = [NSURL URLWithString: stringURL];
    
    [[AFHTTPSessionManager manager] GET: @"https://news-at.zhihu.com/api/4/story/8997528/long-comments" parameters: nil headers: nil progress:^(NSProgress * _Nonnull downloadProgress) {
        //加载进度
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //网络加载成功
        NSLog(@"%@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //网络加载成功
    }];
    
}

@end
