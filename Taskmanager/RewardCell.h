//
//  RewardCell.h
//  Taskmanager
//
//  Created by Rustam N on 26/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RewardCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *xp;
@property (weak, nonatomic) IBOutlet UIButton *buy;



@end
