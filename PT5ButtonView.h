//
//  PT5ButtonView.h
//  PT5Button
//
//  Created by Otatime on 8/20/15.
//  Copyright (c) 2015 Cao Phuoc Thanh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PT5ButtonView : UIView
@property(nonatomic,strong) NSMutableArray* buttons;
-(void)addbuttonWithNumber:(int)number;
@end
