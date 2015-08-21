//
//  ViewController.m
//  TestLayoutButton
//
//  Created by Tran Viet on 8/20/15.
//  Copyright (c) 2015 Viettranx. All rights reserved.
//

#import "ViewController.h"
#import "PT5ButtonView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PT5ButtonView *FButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.FButton addbuttonWithNumber:10];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
