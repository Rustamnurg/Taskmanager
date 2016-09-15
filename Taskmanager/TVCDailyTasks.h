//
//  TVCDailyTasks.h
//  Taskmanager
//
//  Created by Rustam N on 21.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVCDailyTasks : UITableViewController
{
    NSMutableArray *arrTask;
 //   NSMutableArray *arrTaskForOut;
}
@property (weak, nonatomic) IBOutlet UILabel *xp;
@property (nonatomic) int count;
@property (nonatomic) int num;
@property (nonatomic) NSInteger rowActiv;



@end