//
//  UIControl+FDEnlargeArea.m
//  FDEnlargeAreaDemo
//
//  Created by weichao on 16/10/1.
//  Copyright © 2016年 chaowei. All rights reserved.
//

#import "UIControl+FDEnlargeArea.h"
#import <objc/runtime.h>

@implementation UIControl (FDEnlargeArea)

static char topNameKey;
static char rightNameKey;
static char bottomNameKey;
static char leftNameKey;

- (void)fd_setEnlargeEdge:(CGFloat)edge {
    [self fd_setEnlargeEdgeWithTop:edge right:edge bottom:edge
                              left:edge];
}

- (void)fd_setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left {
    objc_setAssociatedObject(self, &topNameKey, [NSNumber numberWithFloat:top], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &rightNameKey, [NSNumber numberWithFloat:right], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &bottomNameKey, [NSNumber numberWithFloat:bottom], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &leftNameKey, [NSNumber numberWithFloat:left], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGRect)fd_enlargedRect {
    NSNumber* topEdge = objc_getAssociatedObject(self, &topNameKey);
    NSNumber* rightEdge = objc_getAssociatedObject(self, &rightNameKey);
    NSNumber* bottomEdge = objc_getAssociatedObject(self, &bottomNameKey);
    NSNumber* leftEdge = objc_getAssociatedObject(self, &leftNameKey);
    
    if(topEdge && rightEdge && bottomEdge && leftEdge) {
        return CGRectMake(self.bounds.origin.x - leftEdge.floatValue,
                          self.bounds.origin.y - topEdge.floatValue,
                          self.bounds.size.width + leftEdge.floatValue + rightEdge.floatValue,
                          self.bounds.size.height + topEdge.floatValue + bottomEdge.floatValue);
    }
    else {
        return self.bounds;
    }
}

- (UIView*)fd_hitTest:(CGPoint)point withEvent:(UIEvent*)event {
    CGRect rect = [self fd_enlargedRect];
    if (CGRectEqualToRect(rect, self.bounds)) {
        return [super hitTest:point withEvent:event];
    }
    UIView *hitTestsView = CGRectContainsPoint(rect, point) ? self : nil;
    return  hitTestsView;
}


- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent*)event {
    return [self fd_hitTest:point withEvent:event];
}

@end

