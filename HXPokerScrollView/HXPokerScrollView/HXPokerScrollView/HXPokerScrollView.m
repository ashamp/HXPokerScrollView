//
//  HXPokerScrollView.m
//  HXTestWorkSpace
//
//  Created by MacBook on 15/8/18.
//  Copyright (c) 2015年 谢俊伟. All rights reserved.
//

#import "HXPokerScrollView.h"

#import <Masonry.h>

#import "UIView+UIViewExtention.h"

#import <UIView+JWMasonryConstraint.h>

@interface HXPokerScrollView ()<UIScrollViewDelegate>
@property (nonatomic, strong)NSArray *views;
@property(nonatomic,strong) UIPageControl *pageControl;
@end

@implementation HXPokerScrollView

- (instancetype)initWithViews:(NSArray *)views
{
    self = [super init];
    if (self) {
        self.views = views;
        self.clipsToBounds = YES;
        [self setupViews];
    }
    return self;
}

- (void)setupViews{
    
    UIScrollView *scrollView = [UIScrollView new];
    scrollView.delegate = self;
    scrollView.bounces = NO;
    scrollView.pagingEnabled = YES;
    [self addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView.superview);
    }];
    
    UIView *contentView = [UIView new];
    [scrollView addSubview:contentView];
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.height.equalTo(contentView.superview);
        make.width.equalTo(contentView.superview).multipliedBy(self.views.count);
    }];
    
    for (UIView *view in self.views.reverseObjectEnumerator) {
        [contentView addSubview:view];
    }
    
    UIPageControl *pageControl=[UIPageControl new];
    self.pageControl=pageControl;
    pageControl.pageIndicatorTintColor = [UIColor colorWithWhite:1 alpha:0.3];
    pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    pageControl.userInteractionEnabled = NO;
    pageControl.hidesForSinglePage = YES;
    pageControl.currentPage = 0;
    pageControl.numberOfPages=self.views.count;
    [self addSubview:pageControl];
    [pageControl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(pageControl.superview);
        make.bottom.equalTo(pageControl.superview);
//        make.height.equalTo(@20);
    }];}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat width = scrollView.frame.size.width;
    CGPoint contentOffset = scrollView.contentOffset;
    CGFloat currentPage = contentOffset.x/width;
    self.pageControl.currentPage = currentPage;
    for (NSInteger index = 0 ; index < currentPage + 1; index ++) {
        
        CGFloat viewMaxX = index * width;
        
        UIView *view = self.views[index];

        if (contentOffset.x < viewMaxX) {
            view.left = contentOffset.x;
        }else{
            view.left = index * width;
        }
    }
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    UIView *view = [self.views firstObject];
    CGRect rect = view.bounds;
    if (!CGRectEqualToRect(self.bounds,rect)) {
        for (UIView *view in self.views) {
            view.frame = self.bounds;
        }
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
