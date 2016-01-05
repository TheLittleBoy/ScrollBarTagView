//
//  BaseTagView.m
//  ScrollBarTagView
//
//  Created by  MAC on 16/1/5.
//  Copyright © 2016年 dse12345z. All rights reserved.
//

#import "BaseTagView.h"

@implementation BaseTagView


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.isDragging = YES;
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    self.isDragging = NO;
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    
    if (touch) {
        CGPoint point = [touch locationInView:self.superview];
        
        point.x = 0;
        
        CGFloat y = point.y/self.superScrollView.frame.size.height*(self.superScrollView.contentSize.height-self.superScrollView.frame.size.height);
        
        CGRect newFrame = self.frame;
        newFrame.origin.y = point.y;
        self.frame = newFrame;
        point.y = y;
        
        //NSLog(@"%@",NSStringFromCGPoint(point));
        
        [self.superScrollView setContentOffset:point animated:NO];
    }
}

@end
