//
//  VCCreatingGoals.h
//  Taskmanager
//
//  Created by Rustam N on 19.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCCreatingGoals : UIViewController
{
    NSMutableArray *arrTaskCreatSaved;
    NSMutableArray *arrTaskCreat;
}
@property (strong, nonatomic)  NSString *nameTextFildTask;
@property (strong, nonatomic)  NSString *descriptionTextFildTask;
@property (strong, nonatomic)  NSString *timeTextFildTask;

@end
