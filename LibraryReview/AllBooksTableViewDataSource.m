//
//  AllBooksTableViewDataSource.m
//  LibraryReview
//
//  Created by Robert Shepperd on 8/24/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "AllBooksTableViewDataSource.h"
#import "BookSwitchTableViewCell.h"

static NSString *allBooksCellID = @"AllBooksCellID";


@implementation AllBooksTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"allBooksCellID" forIndexPath:indexPath];
    
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:allBooksCellID];
    
    return cell;
    
}

@end
