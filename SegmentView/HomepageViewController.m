//
//  HomepageViewController.m
//  SegmentView
//
//  Created by tom.sun on 16/5/31.
//  Copyright © 2016年 tom.sun. All rights reserved.
//

#import "HomepageViewController.h"
#import "SegmentViewController.h"
#import "ExampleViewController.h"

static CGFloat const ButtonHeight = 50;

@interface HomepageViewController ()

@end

@implementation HomepageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"欢迎使用";
    SegmentViewController *vc = [[SegmentViewController alloc]init];
    NSArray *titleArray = @[@"推荐", @"订阅", @"健康", @"资讯", @"原创", @"娱乐",@"搞笑",@"军事"];
    vc.titleArray = titleArray;
    NSMutableArray *controlArray = [[NSMutableArray alloc]init];
    for (int i = 0; i < vc.titleArray.count; i ++) {
        ExampleViewController *vc = [[ExampleViewController alloc]initWithIndex:i title:titleArray[i]];
        [controlArray addObject:vc];
    }
    vc.titleSelectedColor = [UIColor redColor];
    vc.subViewControllers = controlArray;
    vc.buttonWidth = 80;
    vc.buttonHeight = ButtonHeight;
    [vc initSegment];
    [vc addParentController:self];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
