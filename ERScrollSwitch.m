//
//  ERScrollSwitch.m
//  PurePractice
//
//  Created by Alex on 3/20/13.
//  Copyright (c) 2013 Electronic Remedy, Inc. All rights reserved.
//

#import "ERScrollSwitch.h"
#import <QuartzCore/QuartzCore.h>

@implementation ERScrollSwitch

- (id)initWithFrame:(CGRect)frame image:(UIImage*)image thumbOffset:(NSInteger)thumbOffset delegate:(id<ERScrollSwitchDelegate>)delegate {
    self = [super initWithFrame:frame];
    self.switchDelegate = delegate;
    [self setBackgroundColor:[UIColor whiteColor]];
    self.thumbOffset = thumbOffset;
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    [button setBackgroundColor:[UIColor whiteColor]];
    [self addSubview:button];
    [button setImage:image forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(toggle:)
     forControlEvents:UIControlEventTouchUpInside];
    self.contentSize = image.size;
    
    self.layer.cornerRadius = image.size.height / 2.0; // completely rounded corners
    self.scrollEnabled = NO;
    return self;
}

- (void)setOn:(BOOL)on animated:(BOOL)animated {
    BOOL previousState = _on;
    _on = on;
    CGPoint scrollPoint = CGPointMake((self.on) ? 0 : self.thumbOffset, 0.0);
    [self setContentOffset:scrollPoint animated:animated];
    if (_on != previousState && self.switchDelegate) {
        [self.switchDelegate didToggle:self];
    }
}

- (void) setOn:(BOOL)on {
    [self setOn:on animated:NO];
}

- (void)toggle:(id)sender {
    [self setOn:!self.on animated:YES];
}



@end
