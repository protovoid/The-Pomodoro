//
//  PORoundsViewController.m
//  The Pomodoro
//
//  Created by Chad on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "PORoundsViewController.h"
#import "PORoundsDataSource.h"

@interface PORoundsViewController () <UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) PORoundsDataSource *dataSource;

@end

@implementation PORoundsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // UITableView *tableView = [UITableView new];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
    
    self.dataSource = [PORoundsDataSource new];
    [self.dataSource registerTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;

    self.tableView.delegate = self;
    self.title = @"Rounds";
    self.tableView.backgroundColor = [UIColor redColor];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // Add didSelectRowAtIndexPath to change currentRound and reload data and post minutes

    
}


- (void)registerForNotifications {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(endRound:) name:@"finished" object:nil];
}

- (void)unregisterForNotifications {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"finished" object:nil];
}



- (void)endRound:(NSNotification *)notification {
    
}

- (void)newRound:(NSNotification *)notification {
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
