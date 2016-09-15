//
//  TVCDailyTasksCell.h
//  Taskmanager
//
//  Created by Rustam N on 27/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol CellDelegate <NSObject>
- (void)didClickOnCellAtIndex:(NSInteger)cellIndex withData:(id)data;
@end
@interface TVCDailyTasksCell : UITableViewCell
{
    NSMutableArray *arrTask;
    //   NSMutableArray *arrTaskForOut;
}
@property (weak, nonatomic) IBOutlet UIView *cellFon;
@property (weak, nonatomic) IBOutlet UILabel *dailyTaskLabel;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) id<CellDelegate>delegate;
@property (assign, nonatomic) NSInteger cellIndex;

@end
