//
//  ViewController.m
//  CDChat
//
//  Created by 吴文海 on 2019/3/7.
//  Copyright © 2019 吴文海. All rights reserved.
//

#import "ViewController.h"
#import "CDChatViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self action:@selector(msgVc:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(200, 200, 100, 50);
    [button setTitle:@"聊天" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
}

- (void)msgVc:(UIButton *)button {
    
    CDChatViewController *msgVc = [[CDChatViewController alloc] init];
    msgVc.title = @"聊天";
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:msgVc];
    [self presentViewController:nav animated:YES completion:nil];
}


@end
