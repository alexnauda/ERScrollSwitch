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

/**
 * set the value of the switch, and call didToggle on the delegate, if any
 */
- (void)setOn:(BOOL)on animated:(BOOL)animated;

/**
 * set the value of the switch, and only call didToggle on the delegate if toggle==YES
 */
- (void)setOn:(BOOL)on animated:(BOOL)animated toggle:(BOOL)toggle;

- (void)toggle:(id)sender;

@property(nonatomic, getter=isOn) BOOL on;
@property NSInteger thumbOffset;
@property id<ERScrollSwitchDelegate> switchDelegate;
@end
