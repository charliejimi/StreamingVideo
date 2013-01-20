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
//#define WINDOW_HEIGHT_HORIZONTAL   windowRect.size.width
//#define WINDOW_WIDTH_HORIZONTAL    windowRect.size.height
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
        
        [_bk2MenuBtn setBackgroundImage:[UIImage imageNamed:@"bk2menuBtn.png"] forState:UIControlStateNormal];
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
    
    // 加入黑色背景
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"Default.png"]drawInRect:self.view.bounds];
    
    UIImage *backgroundImage=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundImage];
    
    //長寬的scale(針對將來不同裝置的長寬考量)
    NSInteger yScale=1; //WINDOW_HEIGHT_HORIZONTAL/WINDOW_HEIGHT_BASE;
    NSInteger xScale=1; //WINDOW_WIDTH_HORIZONTAL/WINDOW_WIDTH_BASE;
    
    //按鈕的xy座標(針對將來不同裝置的長寬考量)
    NSInteger xCoordinateOfBtns=0;
    NSInteger yCoordinateOfBtns=0;
    xCoordinateOfBtns=894;
    yCoordinateOfBtns=633;
    self.bk2MenuBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.bk2MenuBtn addTarget:self
                              action:@selector(bk2MenuBtnPressed:)                    forControlEvents:UIControlEventTouchDown];
    
    
        [self.view addSubview:self.bk2MenuBtn];
    
    //加入LOGO
    NSInteger xCoordinateOfImgs=874;
    NSInteger yCoordinateOfImgs=0;
    
    UIImageView* imgView = [[UIImageView alloc] initWithFrame:CGRectMake(xCoordinateOfImgs*xScale, yCoordinateOfImgs*yScale, LOGO_WIDTH, LOGO_HEIGHT)];
    imgView.image = [UIImage imageNamed:@"wifi_logo.png"];
    [self.view addSubview:imgView];

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
