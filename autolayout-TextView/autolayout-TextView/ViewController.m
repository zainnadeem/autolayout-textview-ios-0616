//
//  ViewController.m
//  autolayout-TextView
//
//  Created by Tom OMalley on 10/13/15.
//  Copyright © 2015 Flatirion School. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view removeConstraints:self.view.constraints];
    
    for(UIView *subview in self.view.subviews)
    {
        subview.translatesAutoresizingMaskIntoConstraints = NO;
        [subview removeConstraints:subview.constraints];
    }

    [self.leftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.leftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    
    [self.rightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10].active = YES;
    [self.rightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    
    [self.textView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20].active = YES;
    [self.textView.bottomAnchor constraintEqualToAnchor:self.leftButton.topAnchor constant:-10].active = YES;
    [self.textView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.textView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:-20].active = YES;
    
    self.textView.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
