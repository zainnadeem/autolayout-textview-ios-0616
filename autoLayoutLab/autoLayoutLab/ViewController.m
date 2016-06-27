//
//  ViewController.m
//  autoLayoutLab
//
//  Created by Zain Nadeem on 6/27/16.
//  Copyright © 2016 Zain Nadeem. All rights reserved.
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
    // Do any additional setup after loading the view, typically from a nib.
    [self.view removeConstraints: self.view.constraints];
    
    
    for (UIView *subView in  self.view.subviews){
        subView.translatesAutoresizingMaskIntoConstraints = NO;
        [subView removeConstraints:subView.constraints];
      //removes all constrains from main.storyboard
    }
    
    [self.leftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active=YES;
    [self.leftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    
    [self.rightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active=YES;
    [self.rightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10].active=YES;
    
    [self.textView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active=YES;
    [self.textView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20].active = YES;
    [self.textView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-40].active = YES;
    [self.textView.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:-20].active = YES;
    
    self.textView.backgroundColor = [UIColor redColor];
    
    
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
