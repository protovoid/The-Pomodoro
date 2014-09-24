//
//  PORoundsDataSource.h
//  The Pomodoro
//
//  Created by Chad on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PORoundsDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;

@end
