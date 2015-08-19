//
//  UIView+JWMasonryConstraint.m
//  JWMasonryConstraint
//
//  Created by 谢俊伟 on 6/18/15.
//  Copyright (c) 2015 XieJunwei. All rights reserved.
//

#import "UIView+JWMasonryConstraint.h"
#import <Masonry.h>
@implementation UIView (JWEqualWidthConstraint)

-(void)makeEqualWidthViews:(NSArray *)views{
    [self makeEqualWidthViews:views
                  LeftPadding:0
                 RightPadding:0
                   TopPadding:0
                BottomPadding:0
                  viewPadding:0];
}

-(void)makeEqualWidthViews:(NSArray *)views
                 LRpadding:(CGFloat)LRpadding{
    [self makeEqualWidthViews:views
                  LeftPadding:LRpadding
                 RightPadding:LRpadding
                   TopPadding:0
                BottomPadding:0
                  viewPadding:0];
}

-(void)makeEqualWidthViews:(NSArray *)views
                 TBpadding:(CGFloat)TBpadding{
    [self makeEqualWidthViews:views
                  LeftPadding:0
                 RightPadding:0
                   TopPadding:TBpadding
                BottomPadding:TBpadding
                  viewPadding:0];
}

-(void)makeEqualWidthViews:(NSArray *)views
              viewPadding :(CGFloat)viewPadding{
    [self makeEqualWidthViews:views
                  LeftPadding:0
                 RightPadding:0
                   TopPadding:0
                BottomPadding:0
                  viewPadding:viewPadding];
}

-(void)makeEqualWidthViews:(NSArray *)views
                 LRpadding:(CGFloat)LRpadding
              viewPadding :(CGFloat)viewPadding{
    [self makeEqualWidthViews:views
                  LeftPadding:LRpadding
                 RightPadding:LRpadding
                   TopPadding:0
                BottomPadding:0
                  viewPadding:viewPadding];
}

-(void)makeEqualWidthViews:(NSArray *)views
                 LRpadding:(CGFloat)LRpadding
                 TBpadding:(CGFloat)TBpadding
              viewPadding :(CGFloat)viewPadding{
    [self makeEqualWidthViews:views
                  LeftPadding:LRpadding
                 RightPadding:LRpadding
                   TopPadding:TBpadding
                BottomPadding:TBpadding
                  viewPadding:viewPadding];
}

-(void)makeEqualWidthViews:(NSArray *)views
               LeftPadding:(CGFloat)leftPadding
              RightPadding:(CGFloat)rightPadding
                TopPadding:(CGFloat)topPadding
             BottomPadding:(CGFloat)bottomPadding
              viewPadding :(CGFloat)viewPadding{
    UIView *lastView;
    for (UIView *view in views) {
        [self addSubview:view];
        if (lastView) {
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.bottom.equalTo(lastView);
                make.left.greaterThanOrEqualTo(lastView.mas_right).offset(viewPadding);
                make.left.equalTo(lastView.mas_right).offset(viewPadding).priority(999);//用于防止宽度过小时的约束错误
                make.width.equalTo(lastView);
            }];
        }else
        {
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.left.bottom.equalTo(self).insets(UIEdgeInsetsMake(topPadding, leftPadding, bottomPadding, rightPadding));
            }];
        }
        lastView=view;
    }
    [lastView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.greaterThanOrEqualTo(self).offset(-rightPadding);
        make.right.equalTo(self).offset(-rightPadding).priority(999);
    }];
}

@end

@implementation UIView (JWEqualHeightConstraint)

-(void)makeEqualHeightViews:(NSArray *)views{
    [self makeEqualHeightViews:views
                   LeftPadding:0
                  RightPadding:0
                    TopPadding:0
                 BottomPadding:0
                   viewPadding:0];
}

-(void)makeEqualHeightViews:(NSArray *)views
                  LRpadding:(CGFloat)LRpadding{
    [self makeEqualHeightViews:views
                   LeftPadding:LRpadding
                  RightPadding:LRpadding
                    TopPadding:0
                 BottomPadding:0
                   viewPadding:0];
}

-(void)makeEqualHeightViews:(NSArray *)views
                  TBpadding:(CGFloat)TBpadding{
    [self makeEqualHeightViews:views
                   LeftPadding:0
                  RightPadding:0
                    TopPadding:TBpadding
                 BottomPadding:TBpadding
                   viewPadding:0];
}

-(void)makeEqualHeightViews:(NSArray *)views
               viewPadding :(CGFloat)viewPadding{
    [self makeEqualHeightViews:views
                   LeftPadding:0
                  RightPadding:0
                    TopPadding:0
                 BottomPadding:0
                   viewPadding:viewPadding];
}

-(void)makeEqualHeightViews:(NSArray *)views
                  LRpadding:(CGFloat)LRpadding
               viewPadding :(CGFloat)viewPadding{
    [self makeEqualHeightViews:views
                   LeftPadding:LRpadding
                  RightPadding:LRpadding
                    TopPadding:0
                 BottomPadding:0
                   viewPadding:viewPadding];
}

-(void)makeEqualHeightViews:(NSArray *)views
                  LRpadding:(CGFloat)LRpadding
                  TBpadding:(CGFloat)TBpadding
               viewPadding :(CGFloat)viewPadding{
    [self makeEqualHeightViews:views
                   LeftPadding:LRpadding
                  RightPadding:LRpadding
                    TopPadding:TBpadding
                 BottomPadding:TBpadding
                   viewPadding:viewPadding];
}

-(void)makeEqualHeightViews:(NSArray *)views
                LeftPadding:(CGFloat)leftPadding
               RightPadding:(CGFloat)rightPadding
                 TopPadding:(CGFloat)topPadding
              BottomPadding:(CGFloat)bottomPadding
                viewPadding:(CGFloat)viewPadding{
    UIView *lastView;
    for (UIView *view in views) {
        [self addSubview:view];
        if (lastView) {
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.right.equalTo(lastView);
                make.top.greaterThanOrEqualTo(lastView.mas_bottom).offset(viewPadding);
                make.top.equalTo(lastView.mas_bottom).offset(viewPadding).priority(999);//用于防止高度过小时的约束错误
                make.height.equalTo(lastView);
            }];
        }else
        {
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.top.right.equalTo(self).insets(UIEdgeInsetsMake(topPadding, leftPadding, bottomPadding, rightPadding));
            }];
        }
        lastView=view;
    }
    [lastView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.greaterThanOrEqualTo(self).offset(-bottomPadding);
        make.bottom.equalTo(self).offset(-bottomPadding).priority(999);
    }];
}

@end


@implementation UIView (JWCoverConstraint)

- (void)jw_makeCoverOnView:(UIView *)superView{
    [superView addSubview:self];
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(superView);
    }];
}

@end


@implementation UIView (JWEqualWidthHeightConstraint)

- (void)makeEqualWidthHeightViews:(NSArray *)views numberOfRows:(NSInteger)rows{
    if (rows < 1) {
        return;
    }
    NSInteger columns = (views.count-1)/rows+1;
    [self makeEqualWidthHeightViews:views numberOfColumns:columns viewVertivalPadding:0 viewHorizenPadding:0 insets:UIEdgeInsetsZero];
    
}


- (void)makeEqualWidthHeightViews:(NSArray *)views
                     numberOfRows:(NSInteger)rows
              viewVertivalPadding:(CGFloat)viewVertivalPadding
               viewHorizenPadding:(CGFloat)viewHorizenPadding
                           insets:(UIEdgeInsets)insets{
    if (rows<1) {
        return;
    }
    NSInteger columns = (views.count-1)/rows+1;
    [self makeEqualWidthHeightViews:views numberOfColumns:columns viewVertivalPadding:viewVertivalPadding viewHorizenPadding:viewHorizenPadding insets:insets];
}

- (void)makeEqualWidthHeightViews:(NSArray *)views
                  numberOfColumns:(NSInteger)columns
              viewVertivalPadding:(CGFloat)viewVertivalPadding
               viewHorizenPadding:(CGFloat)viewHorizenPadding
                           insets:(UIEdgeInsets)insets{
    
    if (columns < 1 ) {
        return;
    }
    
    //预处理 不得小于0
    if (viewHorizenPadding<0) {
        viewHorizenPadding = 0 ;
    }
    
    if (viewVertivalPadding < 0) {
        viewVertivalPadding = 0;
    }
    
    NSInteger rows = (views.count-1)/columns+1;
    
    UIView *insetsView = [UIView new];//用于边距约束
    [self addSubview:insetsView];
    [insetsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self).insets(insets);
    }];

    UIView *lastView;
    for (NSInteger row = 0; row < rows; row ++) {
        for (NSInteger column = 0; column < columns; column ++) {
            NSInteger index = row * columns +column;
            UIView *view;
            if (index < views.count) {
                view = views[index];
            }
            else{
                return;
            }
            if (view) {
                [self addSubview:view];
                [view mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.height.equalTo(insetsView).dividedBy(rows).offset(-viewHorizenPadding*(rows-1)/rows);
                    make.width.equalTo(insetsView).dividedBy(columns).offset(-viewVertivalPadding*(columns-1)/columns);
                    if (lastView) {
                        //该行首个view
                        BOOL isFirstViewInRow = index%columns == 0;
                        
                        if (isFirstViewInRow) {
                            make.top.equalTo(lastView.mas_bottom).offset(viewHorizenPadding);
                            make.left.equalTo(insetsView);
                        }
                        else{
                            make.centerY.equalTo(lastView);
                            make.left.equalTo(lastView.mas_right).offset(viewVertivalPadding);
                        }
                    }
                    else{
                        make.top.left.equalTo(insetsView);
                    }
                }];
                lastView = view;
            }
        }
    }
}

@end
