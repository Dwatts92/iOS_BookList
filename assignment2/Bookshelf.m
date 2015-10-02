//
//  Bookshelf.m
//  assignment2
//
//  Created by ddwatts on 9/16/14.
//  Copyright (c) 2014 ddwatts. All rights reserved.
//

#import "Bookshelf.h"

@implementation Bookshelf

-(id)init {
    self = [super init];


if(self)
{
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"books" ofType:@"plist"];
    
    self.booklist = [NSMutableArray arrayWithContentsOfFile:filepath];
}
    return self;
}

static Bookshelf *theBookshelf = nil;

+(Bookshelf*)sharedBookshelf
{
    if (theBookshelf ==nil)
    {
        theBookshelf = [[Bookshelf alloc] init];
    }
    return theBookshelf;
}




@end


