//
//  BookController.m
//  LibraryReview
//
//  Created by Robert Shepperd on 8/24/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import "BookController.h"
@import CoreData;
#import "Stack.h"

@implementation BookController

+(BookController *)sharedInstance {
    static BookController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once (&onceToken, ^{
        sharedInstance= [BookController new];
        
    });
    return sharedInstance;
}


- (Book *)createBook {
    
 Book *book = [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:[Stack sharedInstance].managedObjectContext];
    return book;
    }

-(NSArray *)books {
    NSFetchRequest *bookFetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Book"];
    
    NSError *error;
    
   NSArray *fetchedBooks = [[Stack sharedInstance].managedObjectContext executeFetchRequest:bookFetchRequest error:&error];
    if (error) {
        NSLog(@"%@", error.localizedDescription);
        return nil;
    } else {
        return fetchedBooks;
    }
    
}



- (void)deleteBook:(Book *)bookToDelete {
    
    [bookToDelete.managedObjectContext deleteObject:bookToDelete];
    
}

@end
