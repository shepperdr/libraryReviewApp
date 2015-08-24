//
//  Book.h
//  LibraryReview
//
//  Created by Robert Shepperd on 8/24/15.
//  Copyright (c) 2015 Robert Shepperd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Book : NSManagedObject

@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSData * coverImage;
@property (nonatomic, retain) NSNumber * hasRead;
@property (nonatomic, retain) NSNumber * isReading;
@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSString * review;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSString * title;

@end
