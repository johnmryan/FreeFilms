//
//  customButton.m
//  FreeFilms
//
//  Created by Tyler Sammons on 1/9/15.
//  Copyright (c) 2015 Tyler_Sammons. All rights reserved.
//

#import "customButton.h"

@implementation customButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIColor *color = [UIColor colorWithRed:0.114 green:0.114 blue:1 alpha:1];
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, self.bounds);
    
}


@end
