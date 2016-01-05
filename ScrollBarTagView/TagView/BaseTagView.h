//
//  BaseTagView.h
//  ScrollBarTagView
//
//  Created by  MAC on 16/1/5.
//  Copyright © 2016年 dse12345z. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTagView : UIView

@property (assign, nonatomic) BOOL isDragging;

@property (weak, nonatomic) UIScrollView * superScrollView;

@end
