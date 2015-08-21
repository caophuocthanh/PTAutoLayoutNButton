//
//  PT5ButtonView.m
//  PT5Button
//
//  Created by Otatime on 8/20/15.
//  Copyright (c) 2015 Cao Phuoc Thanh. All rights reserved.
//

#import "PT5ButtonView.h"

@implementation PT5ButtonView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self bashInt];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self bashInt];
    }
    return self;
}

- (void)bashInt{
    _buttons=[[NSMutableArray alloc]init];
}

-(void)addbuttonWithNumber:(int)number{
    for (int i=0; i<number; i++) {
        UIButton* button =[[UIButton alloc]init];
        [self.buttons addObject:button];
        button.translatesAutoresizingMaskIntoConstraints = NO;
        button.backgroundColor=[UIColor orangeColor];
        [button setTitle:[NSString stringWithFormat:@"%i",i+1] forState:UIControlStateNormal];
        [button setTintColor:[UIColor whiteColor]];
        button.layer.borderWidth = 0.3f;
        button.layer.borderColor=[[UIColor whiteColor] CGColor];
        [self addSubview:button];
 
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:button attribute:NSLayoutAttributeTop multiplier:1.0 constant:0]];
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:button attribute:NSLayoutAttributeBottom multiplier:1 constant:0]];
        
        // First and last view is special case
        if(i==0) {
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:button attribute:NSLayoutAttributeLeading multiplier:1 constant:0]];
        } else if (i == (number-1)) {
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:button attribute:NSLayoutAttributeTrailing multiplier:1 constant:0]];
            [self addConstraintForView:button preView:[self.buttons objectAtIndex:i-1]];
        } else {
            
            [self addConstraintForView:button preView:[self.buttons objectAtIndex:i-1]];
            
            
        }
    }
}

- (void)addConstraintForView:(UIView *)view preView:(UIView *)preView {
    [self addConstraint:[NSLayoutConstraint constraintWithItem:preView attribute:NSLayoutAttributeWidth relatedBy:0 toItem:view attribute:NSLayoutAttributeWidth multiplier:1 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:preView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0]];
    
}




@end
