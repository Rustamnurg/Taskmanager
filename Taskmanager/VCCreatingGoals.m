//
//  VCCreatingGoals.m
//  Taskmanager
//
//  Created by Rustam N on 19.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "VCCreatingGoals.h"
#import "UITextView.h"



@interface VCCreatingGoals ()
@property (weak, nonatomic) IBOutlet UITextView *nameTextFildGoal;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextViewGoal;
@property (weak, nonatomic) IBOutlet UITextView *timeTextFildGoal;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation VCCreatingGoals


- (void) viewWillAppear:(BOOL)animated{

}
- (IBAction)addTask:(id)sender {
    
}
- (IBAction)saveButton:(id)sender {
    NSUserDefaults *defaulsts =[NSUserDefaults standardUserDefaults];
    
    //сохраняем Цели(перезаписываем массив)
    NSMutableArray *arrGoalCreat = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyGoal"]];
    [arrGoalCreat addObject: @"1"];
    [arrGoalCreat addObject: _nameTextFildGoal.text];
    [arrGoalCreat addObject: _descriptionTextViewGoal.text];
    [arrGoalCreat addObject: _timeTextFildGoal.text];
    [defaulsts setObject:arrGoalCreat forKey:@"keyGoal"];
    
    //сохраняем задачи
    arrTaskCreatSaved = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTaskForSave"]];
    arrTaskCreat = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTask"]];

    [arrTaskCreat addObjectsFromArray:arrTaskCreatSaved];
    [defaulsts setObject:arrTaskCreat forKey:@"keyTask"];
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


- (void)viewDidLoad {
    [super viewDidLoad];
    _nameTextFildGoal.placeholder = @"  What's your goal?";
    _nameTextFildGoal.placeholderColor = [UIColor whiteColor];
    _descriptionTextViewGoal.placeholder = @"  Describe your goal here.";
    _descriptionTextViewGoal.placeholderColor = [UIColor grayColor];
    _timeTextFildGoal.placeholder = @"  Hor how long?";
    _timeTextFildGoal.placeholderColor = [UIColor grayColor];
    
    NSMutableArray *arrOFTaskCreate = [NSMutableArray arrayWithObjects: nil];
    NSUserDefaults *defaulsts =[NSUserDefaults standardUserDefaults];
    [defaulsts setObject:arrOFTaskCreate forKey:@"keyTaskForSave"];

    [_nameTextFildGoal setDelegate:self];
    [_descriptionTextViewGoal setDelegate:self];
    [_timeTextFildGoal setDelegate:self];

    [_nameTextFildGoal setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Full Scale Button"]]];
    
    _saveButton.backgroundColor = [UIColor colorWithRed:0.42 green:0.77 blue:0.98 alpha:1.0];
    _addButton.backgroundColor = [UIColor colorWithRed:0.35 green:0.87 blue:0.98 alpha:1.0];
    _addButton.layer.cornerRadius = 15;
    _saveButton.layer.cornerRadius = 15;
    _scrollView.backgroundColor = [UIColor colorWithRed:0.93 green:0.95 blue:0.96 alpha:1.0];
    
}

@end
