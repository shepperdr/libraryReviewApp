//
//  AllBooksTableViewDataSource.m
//  LibraryReview
//
//  Created by Robert Shepperd on 8/24/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "AllBooksTableViewDataSource.h"
#import "BookSwitchTableViewCell.h"
#import "BookController.h"

static NSString *allBooksCellID = @"AllBooksCellID";


@implementation AllBooksTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [BookController sharedInstance].books.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BookSwitchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"allBooksCellID"];
    
    Book *book = [BookController sharedInstance].books[indexPath.row];
    
    cell.titleLabel.text = book.title;
    cell.authorLabel.text = book.author;
    if ([book.hasRead isEqualToNumber:@1]) {
        cell.hasReadSwitch.on = YES;
    } else {
        cell.hasReadSwitch.on = NO;
    }
    
    return cell;
    
}

@end
