//
//  ViewController.m
//  UIApplicationUserDidTakeScreenshotNotificationSample
//
//  Created by 丸本聡 on 2020/01/04.
//  Copyright © 2020 丸本聡. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(userTookScreenshot:) name:UIApplicationUserDidTakeScreenshotNotification object:nil];

}

- (void)userTookScreenshot:(NSNotification *)notification {
    NSLog(@"スクリーンショットが撮影されました。");
}


@end
