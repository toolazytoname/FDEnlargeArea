//
//  UIControl+FDEnlargeArea.h
//  FDEnlargeAreaDemo
//
//  Created by weichao on 16/10/1.
//  Copyright © 2016年 chaowei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIControl (FDEnlargeArea)

/**
 *  给控件四个方向均扩充大小为edge的点击范围
 *
 *  @param edge 点击范围增加值
 */
- (void)fd_setEnlargeEdge:(CGFloat)edge;

/**
 *  给控件四个方向分别设定扩充值
 *
 *  @param top    上扩充值，正值为扩大
 *  @param right  右扩充值，正值为扩大
 *  @param bottom 下扩充值，正值为扩大
 *  @param left   左扩充值，正值为扩大
 */
- (void)fd_setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;

/**
 *  扩充以后的可点击区域大小值
 *
 *  @return 扩充以后的可点击区域大小值
 */
- (CGRect)fd_enlargedRect;

/**
 *  UI控件的category（例如UISlider+SVEnlargeArea.h），可以通过继承这个UIControl+SVEnlargeArea.h，并且在.m文件中重写- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent*)event调用此方法fd_hitTest:(CGPoint)point withEvent:(UIEvent*)event 来达到扩充点击区域的目的。
 *
 */
- (UIView*)fd_hitTest:(CGPoint)point withEvent:(UIEvent*)event;

@end
