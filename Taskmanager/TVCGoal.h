//
//  TVCGoal.h
//  Taskmanager
//
//  Created by Rustam N on 24/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TVCGoal : UITableViewController
{
    NSMutableArray *arrGoal;
    NSMutableArray *arrGoalForOut;
}
@property(nonatomic) NSInteger *needValue;
@property (nonatomic) NSUInteger count;
@end
