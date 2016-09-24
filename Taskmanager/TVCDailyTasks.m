//
//  TVCDailyTasks.m
//  Taskmanager
//
//  Created by Rustam N on 21.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "TVCDailyTasks.h"
<<<<<<< Updated upstream
#import "VCTaskDailyDetail.h"
#import "TVCDailyTasksCell.h"


@interface TVCDailyTasks () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (strong, nonatomic) IBOutlet UITableView *tabelView;

=======
#import "MCSwipeTableViewCell.h"
#import "VCTaskDailyDetail.h"


@interface TVCDailyTasks () <MCSwipeTableViewCellDelegate>
>>>>>>> Stashed changes



@end

@implementation TVCDailyTasks

- (void)viewDidLoad {
    [super viewDidLoad];
<<<<<<< Updated upstream
    _num = 8;
    _doneButton.backgroundColor = [UIColor colorWithRed:0.32 green:0.86 blue:0.98 alpha:1.0];
    
    UINib *nib = [UINib nibWithNibName:@"TVCDailyTasksCell" bundle:nil];
    [self.tabelView registerNib:nib forCellReuseIdentifier:@"cell"];
    

    
=======
    _num = 7;
>>>>>>> Stashed changes
    }
- (IBAction)pressedButtonInf:(id)sender {
      // [self performSegueWithIdentifier:@"cell" sender:self];
}
  
- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
<<<<<<< Updated upstream
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
=======
    _num = 7;
    arrTask = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTask"]];
    _count = (arrTask.count+1)/8;

    arrTaskForOut = [NSMutableArray new];
    for(int i = 1; i <= arrTask.count; i+=8)
    [arrTaskForOut addObject: [arrTask objectAtIndex:i]];
    [self.tableView reloadData];
    
}


- (IBAction)pressedButtonDone:(id)sender {
    NSUserDefaults *defaulsts =[NSUserDefaults standardUserDefaults];

    if([arrTask[(_rowActiv + 1)* 7] isEqual: @"0"]){
        arrTask[(_rowActiv + 1)* 7] = @"1";
         NSLog(@"0 -> 1");
    }
    else {
    arrTask[(_rowActiv + 1)* 7] = @"0";
        NSLog(@"1 -> 0");
    }

    [self.tableView reloadData];
    [defaulsts setObject: arrTask forKey:@"keyTask"];
    [defaulsts synchronize];
    
   
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    VCTaskDailyDetail *vc = [segue destinationViewController];
    vc.test = _rowActiv;

    
    //DetailViewController * detailViewController = [DetailViewController alloc] init];
   // detailViewController.addressString = array[index];
    

}

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath {
    _rowActiv =indexPath.row;
  
>>>>>>> Stashed changes
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
<<<<<<< Updated upstream
    return 1;
=======
return 1;
>>>>>>> Stashed changes
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _count;
}

<<<<<<< Updated upstream

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
        
    
=======
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    cell.textLabel.text = [arrTaskForOut objectAtIndex: indexPath.row];
    //cjplfnm лейбл для хп
    _rowActiv = indexPath.row;

    
 
    if([[arrTask objectAtIndex: (_rowActiv + 1)* 7] isEqualToString: @"0"]) // 7 15 23
        cell.backgroundColor = [UIColor greenColor];
    else
        cell.backgroundColor = [UIColor grayColor];
    
    
 
>>>>>>> Stashed changes
    return cell;
}
@end
