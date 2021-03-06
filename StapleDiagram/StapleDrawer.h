//
//  StapleDrawer.h
//  StapleDiagram
//
//  Created by Eric Groseclos on 2018-02-05.
//  Copyright © 2018 Eric Groseclos. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface StapleDrawer : UIView

- (instancetype)initDiagram;

@property (nonatomic) IBInspectable int staples;

@property (nonatomic) IBInspectable int height;

@property (nonatomic) IBInspectable NSString *stapleName;

@end
