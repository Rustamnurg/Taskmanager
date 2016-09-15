//
//  VCCreatingTasks.m
//  Taskmanager
//
//  Created by Rustam N on 19.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "VCCreatingTasks.h"
#import "UITextView.h"
@interface VCCreatingTasks ()
@property (weak, nonatomic) IBOutlet UITextView *nameTextFildTask;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextFildTask;
@property (weak, nonatomic) IBOutlet UITextView *timeTextFildTask;
@property (weak, nonatomic) IBOutlet UITextView *xpTextFildTask;
//@property (weak, nonatomic) IBOutlet UITextField *nameTextFildTask;
//@property (weak, nonatomic) IBOutlet UITextField *descriptionTextFildTask;
//@property (weak, nonatomic) IBOutlet UITextField *timeTextFildTask;
//@property (weak, nonatomic) IBOutlet UITextField *xpTextFildTask;
@property (weak, nonatomic) IBOutlet UIDatePicker *dataPiker;
@property (weak, nonatomic) IBOutlet UISwitch *switshButton;
@property (strong, nonatomic) NSString *switshButtonPressedBool;
@property (weak, nonatomic) IBOutlet UIButton *addButton;

@end

@implementation VCCreatingTasks


-(IBAction)showDate {
//    NSDateFormatter *dateFormatter = [NSDateFormatter new];
//    dateFormatter.dateFormat = @"HH:mm";
//    dateFormatter.calendar = [NSCalendar currentCalendar];
    
//    NSString *words = [[NSString alloc]initWithFormat:@"Дата: %@", [dateFormatter stringFromDate:_dataPiker.date]];
    
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Выбранная дата" message:words delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
//    [alert show];
    //[dateFormatter stringFromDate:_dataPiker.date]
}

//    NSMutableArray *arrOFTaskCreate = [NSMutableArray arrayWithObjects:@"1", @"nameOfTask", @"descriptionOfTask", @"timeOFTask", @"pushOfTask", @"pushOfTaskTime",@"metka", nil];


- (void)viewDidLoad {
    [super viewDidLoad];
    [_nameTextFildTask setDelegate:self];
    [_descriptionTextFildTask setDelegate:self];
    [_timeTextFildTask setDelegate:self];
    [_xpTextFildTask setDelegate:self];

    
    _nameTextFildTask.placeholder = @"  What's your task?";
    _nameTextFildTask.placeholderColor = [UIColor whiteColor];
    _descriptionTextFildTask.placeholder = @"  Describe your task here.";
    _descriptionTextFildTask.placeholderColor = [UIColor grayColor];
    _timeTextFildTask.placeholder = @"  Hor how long?";
    _timeTextFildTask.placeholderColor = [UIColor grayColor];
    _xpTextFildTask.placeholder = @"  Reward";
    _xpTextFildTask.placeholderColor = [UIColor grayColor];
    
    [_addButton setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Full Scale Button"]]];



}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    NSRange resultRange = [text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet] options:NSBackwardsSearch];
    if ([text length] == 1 && resultRange.location != NSNotFound) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}
    

- (IBAction)addButton:(id)sender {
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    dateFormatter.dateFormat = @"HH:mm";
    dateFormatter.calendar = [NSCalendar currentCalendar];

    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    NSMutableArray *arrOFTaskCreate = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTaskForSave"]];
    
    if(arrOFTaskCreate.count < 1) [arrOFTaskCreate addObject: @"0"];
    if([_switshButton isOn]) _switshButtonPressedBool = @"1";
    else _switshButtonPressedBool = @"0";
    

    
    
    [arrOFTaskCreate addObject: @"1"];
    [arrOFTaskCreate addObject: _nameTextFildTask.text];
    [arrOFTaskCreate addObject: _descriptionTextFildTask.text];
    [arrOFTaskCreate addObject: _timeTextFildTask.text];
    [arrOFTaskCreate addObject: _xpTextFildTask.text];
    [arrOFTaskCreate addObject: _switshButtonPressedBool];
    [arrOFTaskCreate addObject: [dateFormatter stringFromDate:_dataPiker.date]];
    [arrOFTaskCreate addObject: @"0"];
    [defaults setObject: arrOFTaskCreate forKey:@"keyTaskForSave"];
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex: 1] animated:YES];
    
    
    //    NSMutableArray *arrOFTaskCreate = [NSMutableArray arrayWithObjects:@"1", @"nameOfTask", @"descriptionOfTask", @"timeOFTask", _xpTextFildTask, @"pushOfTask", @"pushOfTaskTime",@"metka", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

@end
