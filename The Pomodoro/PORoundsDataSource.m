//
//  PORoundsDataSource.m
//  The Pomodoro
//
//  Created by Chad on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "PORoundsDataSource.h"
#import "POTimer.h"

@implementation PORoundsDataSource

- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    // DXEntry *entry = [POTimer sharedInstance].entries[indexPath.row];
    
    // cell.textLabel.text = entry.title;
    
    return cell;
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [POTimer sharedInstance].entries.count;
    
}

@end
