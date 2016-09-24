//
//  VCCreatingGoals.m
//  Taskmanager
//
//  Created by Rustam N on 19.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "VCCreatingGoals.h"
<<<<<<< Updated upstream
#import "UITextView.h"



@interface VCCreatingGoals ()
@property (weak, nonatomic) IBOutlet UITextView *nameTextFildGoal;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextViewGoal;
@property (weak, nonatomic) IBOutlet UITextView *timeTextFildGoal;
@property (weak, nonatomic) IBOutlet UIButton *addButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

=======


@interface VCCreatingGoals ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextFildGoal;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextViewGoal;
@property (weak, nonatomic) IBOutlet UITextField *timeTextFildGoal;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UITextView *testTextView;


>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
    arrTaskCreat = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTask"]];
=======
    arrTaskCreat = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTask"]]; //?
>>>>>>> Stashed changes

    [arrTaskCreat addObjectsFromArray:arrTaskCreatSaved];
    [defaulsts setObject:arrTaskCreat forKey:@"keyTask"];
    [defaulsts synchronize];
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex: 0] animated:YES];
<<<<<<< Updated upstream
=======
    
    
    
    for(int i = 0; i < arrTaskCreat.count; i++){
        NSLog([arrTaskCreat objectAtIndex:i]);
    }
//    NSMutableArray *arrOFGoal = [NSMutableArray arrayWithObjects:@"1(id)", @"nameOfGoal", @"descriptionOFGoal", @"timeOFGual", nil];
    
//    NSMutableArray *arrOFTask = [NSMutableArray arrayWithObjects:@"idOfTask", @"nameOfTask", @"descriptionOfTask", @"timeOFTask", @"pushOfTask", @"pushOfTaskTime",@"metka" nil];
    

>>>>>>> Stashed changes
}


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    NSRange resultRange = [text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet] options:NSBackwardsSearch];
    if ([text length] == 1 && resultRange.location != NSNotFound) {
        [textView resignFirstResponder];
        return NO;
    }
<<<<<<< Updated upstream
=======
    NSLog(@"SdSADSADSAD");
>>>>>>> Stashed changes
    return YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
<<<<<<< Updated upstream
    _nameTextFildGoal.placeholder = @"  What's your goal?";
    _nameTextFildGoal.placeholderColor = [UIColor whiteColor];
    _descriptionTextViewGoal.placeholder = @"  Describe your goal here.";
    _descriptionTextViewGoal.placeholderColor = [UIColor grayColor];
    _timeTextFildGoal.placeholder = @"  Hor how long?";
    _timeTextFildGoal.placeholderColor = [UIColor grayColor];
    
=======
>>>>>>> Stashed changes
    NSMutableArray *arrOFTaskCreate = [NSMutableArray arrayWithObjects: nil];
    NSUserDefaults *defaulsts =[NSUserDefaults standardUserDefaults];
    [defaulsts setObject:arrOFTaskCreate forKey:@"keyTaskForSave"];

    [_nameTextFildGoal setDelegate:self];
    [_descriptionTextViewGoal setDelegate:self];
<<<<<<< Updated upstream
    [_timeTextFildGoal setDelegate:self];

    [_nameTextFildGoal setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Full Scale Button"]]];
    
    _saveButton.backgroundColor = [UIColor colorWithRed:0.42 green:0.77 blue:0.98 alpha:1.0];
    _addButton.backgroundColor = [UIColor colorWithRed:0.35 green:0.87 blue:0.98 alpha:1.0];
    _addButton.layer.cornerRadius = 15;
    _saveButton.layer.cornerRadius = 15;
    _scrollView.backgroundColor = [UIColor colorWithRed:0.93 green:0.95 blue:0.96 alpha:1.0];
    
}

=======
    
    [_testTextView setDelegate:self];
    
    _nameTextFildGoal.text = @"Lern English";
    _descriptionTextViewGoal.text =@"English need me";
    _timeTextFildGoal.text = @"1 year";

  [_nameTextFildGoal setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"Full Scale Button"]]];

    
}
- (IBAction)timeTextFildOut:(id)sender {
    [sender resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField*)textField
{
    NSInteger nextTag = textField.tag + 1;
    // Try to find next responder
    UIResponder* nextResponder = [textField.superview viewWithTag:nextTag];
    if (nextResponder) {
        // Found next responder, so set it.
        [nextResponder becomeFirstResponder];
    } else {
        // Not found, so remove keyboard.
        [textField resignFirstResponder];
    }
    return NO; // We do not want UITextField to insert line-breaks.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
>>>>>>> Stashed changes
@end
