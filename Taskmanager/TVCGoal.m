//
//  TVCGoal.m
//  Taskmanager
//
//  Created by Rustam N on 24/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "TVCGoal.h"
#import "VCGoalDetalTabel.h"

@interface TVCGoal ()

@end

@implementation TVCGoal

- (void)viewDidLoad {
    [super viewDidLoad];
    

}
- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    arrGoal = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyGoal"]];
    _count = (arrGoal.count+1)/4;
    
    arrGoalForOut = [NSMutableArray new];
    for(int i = 1; i <= arrGoal.count; i+=4)
    [arrGoalForOut addObject: [arrGoal objectAtIndex:i]];
    [self.tableView reloadData];
        
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

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

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //не забыть проверить, кто такой sender
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    //получить данные из datasource
    VCGoalDetalTabel *vc = [segue destinationViewController];
    vc.test = indexPath.row;
}

<<<<<<< Updated upstream

=======
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation


*/
>>>>>>> Stashed changes

@end
