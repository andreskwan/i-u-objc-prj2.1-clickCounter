//
//  ViewController.m
//  objc2.1_ClickCounter
//
//  Created by Andres Kwan on 9/20/15.
//  Copyright (c) 2015 ___AndresKwan___. All rights reserved.
//


#import "ViewController.h"


@interface ViewController ()
@property (nonatomic, weak) UILabel *label;
@property NSInteger counter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor colorWithRed:(CGFloat) (125.0/255)
                                            green:(CGFloat) (125.0/255)
                                             blue:(CGFloat) (125.0/255)
                                            alpha:1.0];
    label.frame = CGRectMake(50,150,200,60);
    label.text = @"Objective-C Version";
    [self.view addSubview:label];
    self.label = label;

    //Button
    UIButton *incrementButton = [UIButton new];
    [incrementButton setFrame:CGRectMake(50, 250, 100, 60)];
    [incrementButton setTitle:NSLocalizedString(@"Increment", @"Increment")
                     forState:UIControlStateNormal];
    [incrementButton setTitleColor:[UIColor blueColor]
                          forState:UIControlStateNormal];
    [self.view addSubview:incrementButton];

    [incrementButton addTarget:self
                        action:@selector(incrementCount)
              forControlEvents:UIControlEventTouchUpInside];

    UIButton *decrementButton = [UIButton new];
    [decrementButton setFrame:CGRectMake(150, 250, 100, 60)];
    [decrementButton setTitle:NSLocalizedString(@"Decrement", @"Decrement")
                     forState:UIControlStateNormal];
    [decrementButton setTitleColor:[UIColor blueColor]
                          forState:UIControlStateNormal];
    [self.view addSubview:decrementButton];

    [decrementButton addTarget:self
                        action:@selector(decrementCount)
              forControlEvents:UIControlEventTouchUpInside];
    
    //counter
    self.counter = 0;
}

-(void)incrementCount
{
    self.counter = self.counter + 1;
    self.label.text = [NSString stringWithFormat:NSLocalizedString(@"%d", @"%d"),self.counter];
}

-(void)decrementCount
{
    self.counter = self.counter - 1;
    self.label.text = [NSString stringWithFormat:NSLocalizedString(@"%d", @"%d"),self.counter];
}
@end