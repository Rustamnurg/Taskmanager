//
//  VCTaskDailyDetail.m
//  Taskmanager
//
//  Created by Rustam N on 25/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "VCTaskDailyDetail.h"

@interface VCTaskDailyDetail ()
@property (weak, nonatomic) IBOutlet UITextField *nameTask;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTask;
@property (weak, nonatomic) IBOutlet UITextField *timeTask;
@property (weak, nonatomic) IBOutlet UITextField *xpTask;
@property (weak, nonatomic) IBOutlet UITextField *pushTimeTask;

@end

@implementation VCTaskDailyDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    arrTask = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTask"]];
    _count = (_test * 8);
    
    _nameTask.text = [arrTask objectAtIndex:_count+1];
    _descriptionTask.text = [arrTask objectAtIndex:_count+2];
    _timeTask.text = [arrTask objectAtIndex:_count+3];
    _xpTask.text = [arrTask objectAtIndex:_count+4];
    _pushTimeTask.text = [arrTask objectAtIndex:_count+6];
    
    

    
}


@end
