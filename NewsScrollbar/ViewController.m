//
//  ViewController.m
//  NewsScrollbar
//
//  Created by 杜文亮 on 2018/2/7.
//  Copyright © 2018年 杜文亮. All rights reserved.
//

#import "ViewController.h"

#import "SPNewsScrollVC.h"
#import "ParameterMode.h"

#import "ScaleModeVC.h"
//#import "SSNewsScrollVC.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)showSPVC:(id)sender
{
    //请确保参数设置准确无误
    ParameterMode *mode = [[ParameterMode alloc] initWithItemWidth:80 ItemHeight:40 ItemBGColor:[UIColor whiteColor] ItemUnSelColor:[UIColor grayColor] ItemSelColor:[UIColor redColor] ItemCounts:6 ItemNames:@[@"军事手动",@"科技",@"文化",@"内容是防守打法",@"流感的",@"哈哈"] VcNames:@[@"TabVC1",@"TabVC2",@"SameVC",@"SameVC",@"SameVC",@"SameVC"]];
    SPNewsScrollVC *vc = [[SPNewsScrollVC alloc] initWithParameter:mode];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)ShowSSVC:(id)sender
{
    //用法一：直接使用该类初始化（必须立即调用初始化方法）
//    SSNewsScrollVC *vc = [[SSNewsScrollVC alloc] init];
//    [vc setScaleModeParameter:^(NSArray *__autoreleasing *titles)
//     {
//         *titles = @[@"军事",@"科技范",@"哈哈第三方士大夫",@"OK",@"嘻嘻"];
//     }];

    //用法二：使用该类的子类（可以立即调用，也可以在子类的ViewDidLoad中调初始化方法）
    ScaleModeVC *vc = [[ScaleModeVC alloc] init];
//    [vc setScaleModeParameter:^(NSArray *__autoreleasing *titles)
//     {
//         *titles = @[@"军事",@"科技范",@"哈哈第三方士大夫",@"OK",@"嘻嘻"];
//     }];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
