//
//  VCCreateReward.m
//  Taskmanager
//
//  Created by Rustam N on 25/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "VCCreateReward.h"
#import "UITextView.h"

@interface VCCreateReward ()
@property (weak, nonatomic) IBOutlet UITextView *nameTextReward;
@property (weak, nonatomic) IBOutlet UITextView *priceTextReward;
@property (weak, nonatomic) IBOutlet UIButton *addButton;


@end

@implementation VCCreateReward

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameTextReward.placeholderColor = [UIColor whiteColor];
    _nameTextReward.placeholder = @"  Name of Reward?";
    _nameTextReward.placeholderColor = [UIColor grayColor];
    
    _priceTextReward.placeholderColor = [UIColor whiteColor];
    _priceTextReward.placeholder = @"  Price of Reward ?";
    _priceTextReward.placeholderColor = [UIColor grayColor];


    _addButton.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Full Scale Button"]];

  
    [_nameTextReward setDelegate:self];
    [_priceTextReward setDelegate:self];
}
- (IBAction)addButton:(id)sender {
    NSUserDefaults *defaulsts =[NSUserDefaults standardUserDefaults];
    NSMutableArray *arrReward = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyReward"]];
    [arrReward addObject: _nameTextReward.text];
    [arrReward addObject: _priceTextReward.text];
    [defaulsts setObject:arrReward forKey:@"keyReward"];
    [defaulsts synchronize];
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex: 0] animated:YES];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    NSRange resultRange = [text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet] options:NSBackwardsSearch];
    if ([text length] == 1 && resultRange.location != NSNotFound) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}



@end
