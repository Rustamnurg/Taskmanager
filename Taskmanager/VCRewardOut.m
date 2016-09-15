//
//  VCRewardOut.m
//  Taskmanager
//
//  Created by Rustam N on 26/08/16.
//  Copyright © 2016 Rustam N. All rights reserved.
//

#import "VCRewardOut.h"
#import "RewardCell.h"

@interface VCRewardOut ()<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tabelView;
@property (nonatomic) NSInteger count;
@property (nonatomic) NSInteger num;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UILabel *xpLabel;

@end

@implementation VCRewardOut

- (void)viewDidLoad {
    [super viewDidLoad];
    [_tabelView setDelegate:self];
    [_tabelView setDataSource:self];
    // Do any additional setup after loading the view.
    UINib *nib = [UINib nibWithNibName:@"RewardCell" bundle:nil];
    [self.tabelView registerNib:nib forCellReuseIdentifier:@"cell"];
    _scrollView.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:1.0];
    _tabelView.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:1.0];
    _xpLabel.layer.masksToBounds = YES;
    _xpLabel.layer.cornerRadius = 90;
    _xpLabel.backgroundColor =[UIColor colorWithRed:23.0f/255.0f green:203.0f/255.0f blue:255.0f/255.0f alpha:1.0];
}

- (void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    arrReward = [NSMutableArray arrayWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"keyReward"]];
    _count = (arrReward.count + 1) / 2;
    [self.tabelView reloadData];
    _num = 0;
   [_tabelView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
   
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RewardCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.name.text = [arrReward objectAtIndex:_num];
    cell.xp.text = [arrReward objectAtIndex:_num + 1];
    cell.backgroundView = [[UIImageView alloc] initWithImage:[ [UIImage imageNamed:@"Full Scale Button"] stretchableImageWithLeftCapWidth:0.0 topCapHeight:5.0] ];
    
    _num+=2;
    return cell;
}



@end
