ERScrollSwitch
==============

A custom iOS6-style switch similar to UISwitch

Example use:

```objective-c
ERScrollSwtich *switch = [[ERScrollSwitch alloc] initWithFrame:CGRectMake(myX, myY, 79, 28)
                                                         image:[UIImage imageNamed:@"switch-example.png"]
                                                   thumbOffset:51
                                                      delegate:nil];
```

If you would like to be informed when the switch is toggled, set a delegate...

```objective-c
                                                      delegate:self];
```

and implement the ERScrollSwitchDelegate protocol.

in WhateverViewController.h:
```objective-c
@interface WhateverViewController : UIViewController <ERScrollSwitchDelegate>
```

in WhateverViewController.m:
```objective-c
- (void)didToggle:(id)sender {
    // respond to toggle
}
```

This switch is based on a UIScrollView. You provide a single custom image including both backgrounds separated by a thumb
circle (see `switch-example.png` and `switch-example@2x.png`) and provide an offset for the location of the thumb.
The frame size and offset in the code snippet above correspond to the size and thumb position in the included example
images.
