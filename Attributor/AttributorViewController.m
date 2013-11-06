//
//  AttributorViewController.m
//  Attributor
//
//  Created by Kangya Liao on 6/11/13.
//  Copyright (c) 2013 scb. All rights reserved.
//

#import "AttributorViewController.h"

@interface AttributorViewController ()
@property (weak, nonatomic) IBOutlet UITextView *body;
@property (weak, nonatomic) IBOutlet UILabel *headline;
@end

@implementation AttributorViewController

- (IBAction)changeBodySelectionColourToMatchBackgroundOfButton:(UIButton *)sender
{
    [self.body.textStorage addAttribute:NSForegroundColorAttributeName
                                  value:sender.backgroundColor
                                  range:self.body.selectedRange];
}

- (IBAction)outlineBodySelection
{
    [self.body.textStorage addAttributes:@{NSStrokeWidthAttributeName : @-3, // -3
                                           NSStrokeColorAttributeName : [UIColor blackColor]}
                                   range:self.body.selectedRange];
}

- (IBAction)unoutlineBodySelection
{
    [self.body.textStorage removeAttribute:NSStrokeWidthAttributeName
                                     range:self.body.selectedRange];
}

- (void)viewDidLoad // only gets called once before you go on screen
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

@end
