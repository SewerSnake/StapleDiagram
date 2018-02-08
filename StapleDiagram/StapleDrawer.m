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


// Draws the staple diagram. The user can control
// the amount of staples that appear in the diagram.
// The height of the staples can also be configured.
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
        
        [self drawText:x - 50 yPosition:y + 100 canvasWidth:200 canvasHeight:150];
    }
    
    UIBezierPath *path = [UIBezierPath bezierPathWithCGPath:linePath];
    [path stroke];
}

// Draws some text, according to what the user
// provides with _stapleName.
- (void)drawText:(CGFloat)xPos yPosition:(CGFloat)yPos canvasWidth:(CGFloat)canvasW canvasHeight:(CGFloat)canvasH {
    
    CGRect textRect = CGRectMake(xPos, yPos, canvasW, canvasH);
    
    NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
    
    textStyle.alignment = NSTextAlignmentLeft;
    
    NSDictionary* textFontAttributes = @{NSFontAttributeName: [UIFont fontWithName: @"Arial" size: 12], NSForegroundColorAttributeName: UIColor.blackColor, NSParagraphStyleAttributeName: textStyle};
    
    [_stapleName drawInRect: textRect withAttributes: textFontAttributes];
}

@end
