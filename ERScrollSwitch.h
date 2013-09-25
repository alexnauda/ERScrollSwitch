//
//  ERScrollSwitch.h
//  PurePractice
//
//  Created by Alex on 3/20/13.
//  Copyright (c) 2013 Electronic Remedy, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ERScrollSwitchDelegate<NSObject>
@optional
- (void) didToggle:(id)sender;
@end

@interface ERScrollSwitch : UIScrollView
- (id)initWithFrame:(CGRect)frame image:(UIImage*)image thumbOffset:(NSInteger)thumbOffset delegate:(id<ERScrollSwitchDelegate>)delegate;
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)toggle:(id)sender;

@property(nonatomic, getter=isOn) BOOL on;
@property NSInteger thumbOffset;
@property id<ERScrollSwitchDelegate> switchDelegate;
@end
