//
//  GemPieView.m
//  GemPieView
//
//  Created by GemShi on 16/9/19.
//  Copyright © 2016年 GemShi. All rights reserved.
//

#import "GemPieView.h"

@implementation GemPieView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    float sum = 0;
    for (int i = 0; i < self.arcArray.count; i++) {
        sum += [_arcArray[i] integerValue] * 1.0;
    }
    
    CGFloat startAngle = 0;
    for (int i = 0; i < self.arcArray.count; i++) {
        CGFloat scale = [_arcArray[i] integerValue] / (sum * 1.0);
        CGFloat endAngle = startAngle + scale * M_PI * 2;
        CGContextMoveToPoint(context, rect.size.width / 2, rect.size.height / 2);
        CGContextAddArc(context, rect.size.width / 2, rect.size.height / 2, rect.size.width / 2 - 10, startAngle, endAngle, 0);
        UIColor *sectionColor = _colorArray[i];
        [sectionColor set];
        CGContextFillPath(context);
        startAngle = endAngle;
    }
}

@end
