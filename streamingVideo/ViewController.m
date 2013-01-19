//
//  ViewController.m
//  streamingVideo
//
//  Created by opcom on 13/1/17.
//  Copyright (c) 2013年 opcom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"Default.png"]drawInRect:self.view.bounds]; 
    
    UIImage *backgroundImage=UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundImage];
         
    UIButton *btn;
    btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(0,0,110,110);
    UIImage *image = [UIImage imageNamed:@"rec.png"];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
    
    
    
//[self.view addSubview:theToolbar];
    
//    CGRect statusBarRect = [[UIApplication sharedApplication]statusBarFrame];
    
//    NSLog(@"%@", NSStringFromCGRect(statusBarRect));
//    
//    CGRect workSpaceRect = [[UIScreen mainScreen]applicationFrame];
//    
//    NSLog(@"%@", NSStringFromCGRect(workSpaceRect));
//    
    //CGRect windowRect = [[UIScreen mainScreen]bounds];
    //NSLog(@"%f", windowRect.size.width
     /*NSStringFromCGRect(windowRect)*///);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
