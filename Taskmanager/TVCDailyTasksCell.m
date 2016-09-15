//
//  TVCDailyTasksCell.m
//  Taskmanager
//
//  Created by Rustam N on 27/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "TVCDailyTasksCell.h"

@implementation TVCDailyTasksCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
  
}

- (IBAction)buttonClicked:(UIButton *)sender {
        NSUserDefaults *defaulsts =[NSUserDefaults standardUserDefaults];
    arrTask = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyTask"]];
    
 

//    if (self.delegate && [self.delegate respondsToSelector:@selector(didClickOnCellAtIndex:withData:)]) {
//        [self.delegate didClickOnCellAtIndex:_cellIndex withData:@"any other cell data/property"];
//    }
    
    if([[arrTask objectAtIndex: _cellIndex * 8 + 8]  isEqualToString: @"0"]){ // 8 16 24 *8+8
        _cellFon.backgroundColor = [UIColor colorWithRed:0.75 green:0.75 blue:0.75 alpha:1.0];

        NSLog(@"Белый");
        NSLog(@"index %ld", _cellIndex * 8 + 8);
        NSLog(arrTask[_cellIndex * 8 + 8]);
        arrTask[_cellIndex * 8 + 8] = @"1";
        NSLog(arrTask[_cellIndex * 8 + 8]);
        NSLog(@"_____________");
    }
    else{
        _cellFon.backgroundColor = [UIColor whiteColor];
                NSLog(@"Черный");
         NSLog(@"index %ld", _cellIndex * 8 + 8);
        NSLog(arrTask[_cellIndex * 8 + 8]);
        arrTask[_cellIndex * 8 + 8] = @"0";
        NSLog(arrTask[_cellIndex * 8 + 8]);
        NSLog(@"_____________");
    }
    
     [defaulsts setObject: arrTask forKey:@"keyTask"];
     [defaulsts synchronize];
}
@end
