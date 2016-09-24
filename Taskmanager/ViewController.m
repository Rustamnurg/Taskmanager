//
//  ViewController.m
//  Taskmanager
//
//  Created by Rustam N on 19.08.16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *addGoal;
<<<<<<< Updated upstream
@property (weak, nonatomic) IBOutlet UIButton *addReward;
=======
>>>>>>> Stashed changes

@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
     [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"BG"]]];
<<<<<<< Updated upstream
    _addGoal.layer.cornerRadius = 15;
    _addGoal.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Round Button"]];
    _addReward.layer.cornerRadius = 15;
    _addReward.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Round Button White"]];
=======
    _addGoal.layer.cornerRadius = 20;
    
    
    
    
 
>>>>>>> Stashed changes
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}
- (IBAction)del:(id)sender {
    NSUserDefaults *t =[NSUserDefaults standardUserDefaults];
    [t removeObjectForKey:@"keyTask"];
    [t removeObjectForKey:@"keyGoal"];
<<<<<<< Updated upstream
    [t removeObjectForKey:@"keyReward"];
=======
    


>>>>>>> Stashed changes
}

@end
