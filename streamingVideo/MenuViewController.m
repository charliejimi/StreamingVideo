//
//  MenuViewController.m
//  streamingVideo
//
//  Created by Charlie  on 13/1/20.
//  Copyright (c) 2013年 opcom. All rights reserved.
//

#import "MenuViewController.h"
#define WINDOW_HEIGHT_BASE 768
#define WINDOW_WIDTH_BASE  1024
#define WINDOW_HEIGHT_HORIZONTAL   windowRect.size.width
#define WINDOW_WIDTH_HORIZONTAL    windowRect.size.height
#define BUTTON_HEIGHT 110
#define BUTTON_WIDTH  110
#define LOGO_WIDTH  150
#define LOGO_HEIGHT 45


@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize bk2MenuBtn=_bk2MenuBtn;

-(UIButton*)bk2MenuBtn{
    
    if (_bk2MenuBtn==nil) {
        
        
        _bk2MenuBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        //宣告按鈕上的圖片為bk2menuBtn變數
        //並將bk2menuBtn設定成按鈕背景
        
        [_bk2MenuBtn setBackgroundImage:[UIImage imageNamed:@"TheReturnBtn.png"] forState:UIControlStateNormal];
    }
    
    
    return _bk2MenuBtn;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 加入第一層黑色背景
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"Default.png"]drawInRect:self.view.bounds];
    
    UIImage *backgroundImage=UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundImage];
    
    //加入第二層具logo的背景
    UIImageView* imgViewWithLogo = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, WINDOW_WIDTH_BASE, WINDOW_HEIGHT_BASE)];
    imgViewWithLogo.image = [UIImage imageNamed:@"iOS-Background.png"];
    [self.view addSubview:imgViewWithLogo];
    
    //取得ipad的長(height)和寬(width)
    CGRect windowRect = [[UIScreen mainScreen]bounds];
    //長寬的scale(針對將來不同裝置的長寬考量)
    NSInteger yScale=WINDOW_HEIGHT_HORIZONTAL/WINDOW_HEIGHT_BASE;
    NSInteger xScale=WINDOW_WIDTH_HORIZONTAL/WINDOW_WIDTH_BASE;
    
    //按鈕的xy座標(針對將來不同裝置的長寬考量)
    NSInteger xCoordinateOfBtns=0;
    NSInteger yCoordinateOfBtns=0;
    xCoordinateOfBtns=898;
    yCoordinateOfBtns=150;
    self.bk2MenuBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.bk2MenuBtn addTarget:self
                        action:@selector(bk2MenuBtnPressed:)                    forControlEvents:UIControlEventTouchDown];
    
    
    [self.view addSubview:self.bk2MenuBtn];
    //加入MenuLabel
    NSInteger xCoordinateOfLabel=16;
    NSInteger yCoordinateOfLabel=50;
    UILabel *label_word = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, 110, 50)];
    NSString *title = [NSString stringWithFormat:@"Menu"];
    [label_word setText:title];
    [label_word setNumberOfLines:2];
    [label_word setLineBreakMode:label_word.lineBreakMode];
    [label_word setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [label_word setTextColor:[UIColor whiteColor]];
    [label_word setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:label_word];


}

-(void)bk2MenuBtnPressed:(UIButton *)btn{
  
    NSLog(@"%p",self);
    
    [self dismissViewControllerAnimated:YES completion:nil];
    NSLog(@"%p",self);
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
