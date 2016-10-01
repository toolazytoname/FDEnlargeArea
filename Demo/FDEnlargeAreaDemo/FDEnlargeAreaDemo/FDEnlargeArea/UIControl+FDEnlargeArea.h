//
//  UIControl+FDEnlargeArea.h
//  FDEnlargeAreaDemo
//
//  Created by weichao on 16/10/1.
//  Copyright © 2016年 chaowei. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  enlarge clickable area
 *
 */
@interface UIControl (FDEnlargeArea)

/**
 *  enlarge clickable area at four directions(positive value is enlarge)
 *
 *  @param edge 点击范围增加值
 */
- (void)fd_setEnlargeEdge:(CGFloat)edge;

/**
 *  enlarge clickable area at four directions(positive value is enlarge)
 *
 *  @param top    top value
 *  @param right  right value
 *  @param bottom bottom value
 *  @param left   left value
 */
- (void)fd_setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;

/**
 *  CGRect after enlarge
 *
 *  @return CGRect clickable
 */
- (CGRect)fd_enlargedRect;

/**
 *   this method is used to overwrite - (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent*)event
 *
 */
- (UIView*)fd_hitTest:(CGPoint)point withEvent:(UIEvent*)event;

@end
