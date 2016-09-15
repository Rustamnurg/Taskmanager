//
//  TVCDailyTasks.m
//  Taskmanager
//
//  Created by Rustam N on 21.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "TVCDailyTasks.h"
#import "VCTaskDailyDetail.h"
#import "TVCDailyTasksCell.h"


@interface TVCDailyTasks () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (strong, nonatomic) IBOutlet UITableView *tabelView;




@end

@implementation TVCDailyTasks

- (void)viewDidLoad {
    [super viewDidLoad];
    _num = 8;
    _doneButton.backgroundColor = [UIColor colorWithRed:0.32 green:0.86 blue:0.98 alpha:1.0];
    
    UINib *nib = [UINib nibWithNibName:@"TVCDailyTasksCell" bundle:nil];
    [self.tabelView registerNib:nib forCellReuseIdentifier:@"cell"];
    

    
    }
- (IBAction)pressedButtonInf:(id)sender {
      // [self performSegueWithIdentifier:@"cell" sender:self];
}
  
- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    _num = 8;
    arrTask = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTask"]];
    _count = arrTask.count/8;

    [self.tableView reloadData];
}


//- (IBAction)pressedButtonDone:(id)sender {
//    NSUserDefaults *defaulsts =[NSUserDefaults standardUserDefaults];
//    if([arrTask[_rowActiv * 8 + 8] isEqual: @"0"]){
//        arrTask[_rowActiv * 8 + 8] = @"1";
//        NSLog(@"0 -> 1");
//    }
//    else {
//        arrTask[_rowActiv * 8 + 8] = @"0";
//        NSLog(@"1 -> 0");
//    }
//
//    _num = 8;
//   [self.tableView reloadData];
//    [defaulsts setObject: arrTask forKey:@"keyTask"];
//    [defaulsts synchronize];
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

- (void)didClickOnCellAtIndex:(NSInteger)cellIndex withData:(id)data
{
    // Do additional actions as required.
  //  NSLog(@"Cell at Index: %d clicked.\n Data received : %@", cellIndex, data);
    
   // NSUserDefaults *defaulsts =[NSUserDefaults standardUserDefaults];
//    if([arrTask[_rowActiv * 8 + 8] isEqual: @"0"]){
//        arrTask[_rowActiv * 8 + 8] = @"1";
//        NSLog(@"0 -> 1");
//    }
//    else {
//        arrTask[_rowActiv * 8 + 8] = @"0";
//        NSLog(@"1 -> 0");
//    }
    NSLog(@"fghjk");
    _num = 8;
     arrTask = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTask"]];
    [self.tableView reloadData];
    
   // [defaulsts setObject: arrTask forKey:@"keyTask"];
   // [defaulsts synchronize];


}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    VCTaskDailyDetail *vc = [segue destinationViewController];
    vc.test = _rowActiv;
}

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath {
    _rowActiv = indexPath.row;
    NSLog(@"%ld", (long)indexPath.row);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TVCDailyTasksCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
  
    _rowActiv = indexPath.row;

    if([[arrTask objectAtIndex: indexPath.row * 8 + 8]  isEqualToString: @"0"]) // 8 16 24 *8+8
        cell.cellFon.backgroundColor = [UIColor whiteColor];
    else
        cell.cellFon.backgroundColor = [UIColor colorWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];
 
    cell.dailyTaskLabel.text = [arrTask objectAtIndex: indexPath.row * 8 + 2];
    cell.timeLabel.text = ([NSString stringWithFormat:@"%@/%@", [arrTask objectAtIndex: indexPath.row * 8 + 5], [arrTask objectAtIndex: indexPath.row * 8 + 4]]);
    cell.backgroundColor = [UIColor whiteColor];
    cell.doneButton.backgroundColor = [UIColor colorWithRed:0.35 green:0.87 blue:0.98 alpha:1.0];
    
    
    cell.delegate = self;
    cell.cellIndex = indexPath.row;
        
    
    return cell;
}
@end
