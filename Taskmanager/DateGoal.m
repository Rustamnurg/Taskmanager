//
//  DateGoal.m
//  Taskmanager
//
//  Created by Rustam N on 20.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "DateGoal.h"
#define nameG @"NAME_GOAL"
#define descriptionG  @"DESCRIPTION_GOAL"
#define timeG  @"TIME_GOAL"
#define taskG  @"TASK_GOAL"
@implementation DateGoal

- (id)init:(NSString*)nameGoal and:(NSString*)descriptionGoal and:(NSString*)timeGoal and:(NSString*)task{
    self = [super init];
    _nameGoal = nameGoal;
    _descriptionGoal = descriptionGoal;
    _timeGoal = timeGoal;
    _task = task;
    return self;
}

//@property(strong, nonatomic) NSString *nameGoal;
//@property(strong, nonatomic) NSString *descriptionGoal;
//@property(strong, nonatomic) NSString *timeGoal;
//@property(strong, nonatomic) NSString *task;


- (void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:self.nameGoal forKey:nameG];
  //  [encoder encodeInt:self.descriptionGoal forKey:descriptionG];
    [encoder encodeObject:self.timeGoal forKey:timeG];
    [encoder encodeObject:self.task forKey:taskG];
    
}
- (id)initWithCoder:(NSCoder *)decoder{
    self = [super init];
    if (self){
        _nameGoal = [decoder decodeObjectForKey:nameG];
        _descriptionGoal = [decoder decodeObjectForKey:descriptionG];
        _timeGoal = [decoder decodeObjectForKey:taskG];
        _task = [decoder decodeObjectForKey:taskG];
    }
    return self;
    
}




@end
