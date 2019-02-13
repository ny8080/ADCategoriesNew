//
//  WKWebView+UserAgent.m
//  Pods
//
//  Created by hulatang on 2017/9/7.
//
//

#import "WKWebView+UserAgent.h"
#import <objc/runtime.h>

@implementation WKWebView (UserAgent)

+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL originSelector = @selector(initWithFrame:configuration:);
        SEL newSelector = @selector(hook_initWithFrame:configuration:);
        Method originMethod = class_getInstanceMethod([self class], originSelector);
        Method newMethod = class_getInstanceMethod([self class], newSelector);
        
        BOOL addMethodSuccess = class_addMethod([self class], originSelector, method_getImplementation(newMethod), method_getTypeEncoding(newMethod));
        if (addMethodSuccess) {
            class_replaceMethod([self class], newSelector, method_getImplementation(originMethod), method_getTypeEncoding(originMethod));
        } else {
            method_exchangeImplementations(originMethod, newMethod);
        }
    });
}

- (instancetype)hook_initWithFrame:(CGRect)frame configuration:(WKWebViewConfiguration *)configuration {
    
    WKWebView *webView = [self hook_initWithFrame:frame configuration:configuration];
    __weak __typeof(webView) weakWebView = webView;
    [webView evaluateJavaScript:@"navigator.userAgent" completionHandler:^(id result, NSError *error) {
        weakWebView.customUserAgent = [result stringByAppendingString:@" restapp"];
    }];
    return webView;
}

@end

