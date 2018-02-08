//
//  StapleDrawer.m
//  StapleDiagram
//
//  Created by Eric Groseclos on 2018-02-05.
//  Copyright © 2018 Eric Groseclos. All rights reserved.
//

#import "StapleDrawer.h"

@implementation StapleDrawer

- (instancetype)initDiagram {
    self = [super init];
    if (self) {
        self.staples = 5;
        self.height = 200;
    }
    return self;
}


// Draws the staple diagram
- (void)drawRect:(CGRect)rect {
    CGMutablePathRef linePath = CGPathCreateMutable();
    
    int x, y;
    
    x = 10;
    
    y = 200 - _height;
    
    CGPathMoveToPoint(linePath, NULL, x, 200);
    
    for (int i = 0; i < _staples; i++) {
        
        CGPathAddLineToPoint(linePath, NULL, x, y);
        CGPathAddLineToPoint(linePath, NULL, x += 40, y);
        CGPathAddLineToPoint(linePath, NULL, x, 200);
        
        if (i != _staples - 1) {
            CGPathAddLineToPoint(linePath, NULL, x += 10, 200);
        }
    }
    
    UIBezierPath *path = [UIBezierPath bezierPathWithCGPath:linePath];
    [path stroke];
}


@end
