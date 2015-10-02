//
//  NovelsViewController.m
//  assignment2
//
//  Created by ddwatts on 9/16/14.
//  Copyright (c) 2014 ddwatts. All rights reserved.
//

#import "NovelsViewController.h"

@interface NovelsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *textView;
//@property NSString *path;

@end

@implementation NovelsViewController

-(void)loadText: (NSString*)path
{
    NSString *textString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    
    self.textView.text = textString;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    Bookshelf *books = [Bookshelf sharedBookshelf];
    
    if(books.currentBook !=nil)
    {
        NSString *path = [[NSBundle mainBundle] pathForResource:books.currentBook ofType: @"txt"];
        [self loadText:path];
        
        [self setTitle:books.currentBook];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
