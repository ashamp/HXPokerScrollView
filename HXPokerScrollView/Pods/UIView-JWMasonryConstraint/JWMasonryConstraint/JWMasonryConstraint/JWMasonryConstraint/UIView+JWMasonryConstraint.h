//
//  UIView+JWMasonryConstraint.h
//  JWMasonryConstraint
//
//  Created by 谢俊伟 on 6/18/15.
//  Copyright (c) 2015 XieJunwei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JWEqualWidthConstraint)

-(void)makeEqualWidthViews:(NSArray *)views;

-(void)makeEqualWidthViews:(NSArray *)views
                 LRpadding:(CGFloat)LRpadding;

-(void)makeEqualWidthViews:(NSArray *)views
                 TBpadding:(CGFloat)TBpadding;

-(void)makeEqualWidthViews:(NSArray *)views
              viewPadding :(CGFloat)viewPadding;

-(void)makeEqualWidthViews:(NSArray *)views
                 LRpadding:(CGFloat)LRpadding
              viewPadding :(CGFloat)viewPadding;

-(void)makeEqualWidthViews:(NSArray *)views
                 LRpadding:(CGFloat)LRpadding//Left & Right
                 TBpadding:(CGFloat)TBpadding//Top & Bottom
              viewPadding :(CGFloat)viewPadding;

/**
 *  将若干view等宽布局于容器containerView中
 *
 *  @param views         views array
 *  @param leftPadding   左边距
 *  @param rightPadding  右边距
 *  @param topPadding    上边距
 *  @param bottomPadding 下边距
 *  @param viewPadding   view之间的边距
 */
-(void)makeEqualWidthViews:(NSArray *)views
               LeftPadding:(CGFloat)leftPadding
              RightPadding:(CGFloat)rightPadding
                TopPadding:(CGFloat)topPadding
             BottomPadding:(CGFloat)bottomPadding
              viewPadding :(CGFloat)viewPadding;

@end


@interface UIView (JWEqualHeightConstraint)

-(void)makeEqualHeightViews:(NSArray *)views;

-(void)makeEqualHeightViews:(NSArray *)views
                  LRpadding:(CGFloat)LRpadding;

-(void)makeEqualHeightViews:(NSArray *)views
                  TBpadding:(CGFloat)TBpadding;

-(void)makeEqualHeightViews:(NSArray *)views
               viewPadding :(CGFloat)viewPadding;

-(void)makeEqualHeightViews:(NSArray *)views
                  LRpadding:(CGFloat)LRpadding
               viewPadding :(CGFloat)viewPadding;

-(void)makeEqualHeightViews:(NSArray *)views
                  LRpadding:(CGFloat)LRpadding//Left & Right
                  TBpadding:(CGFloat)TBpadding//Top & Bottom
               viewPadding :(CGFloat)viewPadding;

/**
 *  将若干view等高布局于容器containerView中
 *
 *  @param views         views array
 *  @param leftPadding   左边距
 *  @param rightPadding  右边距
 *  @param topPadding    上边距
 *  @param bottomPadding 下边距
 *  @param viewPadding   view之间的边距
 */
-(void)makeEqualHeightViews:(NSArray *)views
                LeftPadding:(CGFloat)leftPadding
               RightPadding:(CGFloat)rightPadding
                 TopPadding:(CGFloat)topPadding
              BottomPadding:(CGFloat)bottomPadding
               viewPadding :(CGFloat)viewPadding;
@end


@interface UIView (JWCoverConstraint)

- (void)jw_makeCoverOnView:(UIView *)superView;

@end


@interface UIView (JWEqualWidthHeightConstraint)

- (void)makeEqualWidthHeightViews:(NSArray *)views numberOfRows:(NSInteger)rows;

- (void)makeEqualWidthHeightViews:(NSArray *)views
                     numberOfRows:(NSInteger)rows
              viewVertivalPadding:(CGFloat)viewVertivalPadding
               viewHorizenPadding:(CGFloat)viewHorizenPadding
                           insets:(UIEdgeInsets)insets;

/**
 *  将若干view等宽等高布局于容器containerView中
 *
 *  @param views               views array
 *  @param columns             总列数
 *  @param viewVertivalPadding view之间的横向间距
 *  @param viewHorizenPadding  view之间的纵向间距
 *  @param insets              边距
 */
- (void)makeEqualWidthHeightViews:(NSArray *)views
                  numberOfColumns:(NSInteger)columns
              viewVertivalPadding:(CGFloat)viewVertivalPadding
               viewHorizenPadding:(CGFloat)viewHorizenPadding
                           insets:(UIEdgeInsets)insets;
@end



