//
//  VCGoalDetalTabel.m
//  Taskmanager
//
//  Created by Rustam N on 24/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "VCGoalDetalTabel.h"

@interface VCGoalDetalTabel ()
@property (weak, nonatomic) IBOutlet UITextField *nameGoal;

@property (weak, nonatomic) IBOutlet UITextField *descriptionGoal;
@property (weak, nonatomic) IBOutlet UITextField *timeGoal;

@end

@implementation VCGoalDetalTabel


- (void)viewDidLoad {
    [super viewDidLoad];
//    _testFild.text = [NSString stringWithFormat:@"%ld",(long)_test];
    
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    arrGoal = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyGoal"]];
    _count = (_test * 4);
    
    _nameGoal.text = [arrGoal objectAtIndex:_count+1];
    _descriptionGoal.text = [arrGoal objectAtIndex:_count+2];
    _timeGoal.text = [arrGoal objectAtIndex:_count + 3];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cell" forIndexPath:indexPath];
    cell.textLabel.text = [arrGoalForOut objectAtIndex: indexPath.row ];
    
    
    return cell;
}



@end
