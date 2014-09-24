//
//  POTimerViewController.m
//  The Pomodoro
//
//  Created by Chad on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "POTimerViewController.h"

@interface POTimerViewController ()
@property (strong, nonatomic) IBOutlet UILabel *timerLabel;
@property (strong, nonatomic) IBOutlet UIButton *timerButton;

@end

@implementation POTimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    
}


- (IBAction)tapTimer:(id)sender {
    
    NSTimer *timer = [NSTimer new];
    // In the action method you need to use performSelector after delay to count down
    // You'll need to store the seconds and minutes and decrease the time by a second each time the method gets called.
    // When seconds and minutes are zero post the notification.
    // need to disable button while timer is going
}



- (void)registerForNotifications {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(newRound:) name:@"roundMinutes" object:nil];
}

- (void)unregisterForNotifications {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"roundMinutes" object:nil];
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
