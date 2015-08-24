//
//  BookController.h
//  LibraryReview
//
//  Created by Robert Shepperd on 8/24/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface BookController : NSObject

- (Book *)createBook;

@property (strong, nonatomic) NSArray *books;

//Update = Pointers and Save;

- (void)deleteBook:(Book *)bookToDelete;


@end
