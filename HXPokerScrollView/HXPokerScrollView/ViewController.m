//
//  ViewController.m
//  HXPokerScrollView
//
//  Created by MacBook on 15/8/19.
//  Copyright (c) 2015年 MacBook. All rights reserved.
//

#import "ViewController.h"

#import "HXPokerScrollView.h"

#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    NSMutableArray *views = [NSMutableArray new];
    for (NSInteger index = 0 ; index < 6; index ++) {
        NSString *filename = [NSString stringWithFormat:@"%@",@(index)];
        NSString *filePath = [[NSBundle mainBundle] pathForResource:filename ofType:@"jpg"];
        UIImage *image = [UIImage imageWithContentsOfFile:filePath];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.clipsToBounds = YES;
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        [views addObject:imageView];
    }
    
    HXPokerScrollView *pokerScrollView = [[HXPokerScrollView alloc] initWithViews:views];
    [self.view addSubview:pokerScrollView];
    [pokerScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
