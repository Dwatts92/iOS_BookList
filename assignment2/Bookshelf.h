//
//  Bookshelf.h
//  assignment2
//
//  Created by ddwatts on 9/16/14.
//  Copyright (c) 2014 ddwatts. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bookshelf : NSObject

+(Bookshelf*)sharedBookshelf;

@property NSString* currentBook;

@property (nonatomic, strong) NSMutableArray *booklist;

@end

