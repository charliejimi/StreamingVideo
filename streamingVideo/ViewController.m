//
//  ViewController.m
//  streamingVideo
//
//  Created by opcom on 13/1/17.
//  Copyright (c) 2013年 opcom. All rights reserved.
//

#import "ViewController.h"
#define WINDOW_HEIGHT_BASE 768
#define WINDOW_WIDTH_BASE  1024
#define WINDOW_HEIGHT_HORIZONTAL   windowRect.size.width
#define WINDOW_WIDTH_HORIZONTAL    windowRect.size.height
#define BUTTON_HEIGHT 110
#define BUTTON_WIDTH  110
#define LOGO_WIDTH  150
#define LOGO_HEIGHT 45


@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 加入背景顏色
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"Default.png"]drawInRect:self.view.bounds]; 
    
    UIImage *backgroundImage=UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:backgroundImage];
    
    //取得ipad的長(height)和寬(width)
    CGRect windowRect = [[UIScreen mainScreen]bounds];
    NSLog(@"%f", WINDOW_HEIGHT_HORIZONTAL    );
    NSLog(@"%f", WINDOW_WIDTH_HORIZONTAL
          );
    //長寬的scale(針對將來不同裝置的長寬考量)
    NSInteger yScale=WINDOW_HEIGHT_HORIZONTAL/WINDOW_HEIGHT_BASE;
    NSInteger xScale=WINDOW_WIDTH_HORIZONTAL/WINDOW_WIDTH_BASE;
    
    //按鈕的xy座標(針對將來不同裝置的長寬考量)
    NSInteger xCoordinateOfBtns=0;
    NSInteger yCoordinateOfBtns=0;
    
    //宣告按鈕變數為menuBtn
    UIButton *menuBtn;
    menuBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCoordinateOfBtns=20;
    yCoordinateOfBtns=153;
    menuBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    
    //宣告按鈕上的menu圖片為menuImage變數
    //並將menuImage設定成按鈕背景
    UIImage *menuImage = [UIImage imageNamed:@"menu.png"];
    [menuBtn setBackgroundImage:menuImage forState:UIControlStateNormal];
    [self.view addSubview:menuBtn];
    
    //宣告按鈕變數為zoomBtn 
    UIButton *zoomBtn;
    zoomBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCoordinateOfBtns=20;
    yCoordinateOfBtns=313;
    zoomBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    //宣告按鈕上的zoom圖片為zoomImage變數
    //並將zoomImage設定成按鈕背景
    UIImage *zoomImage=[UIImage imageNamed:@"zoom.png"];
    [zoomBtn setBackgroundImage:zoomImage forState:UIControlStateNormal];
    [self.view addSubview:zoomBtn];
    //宣告按鈕變數為cameraBtn
    UIButton *cameraBtn;
    cameraBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCoordinateOfBtns=20;
    yCoordinateOfBtns=473;
    cameraBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    //宣告按鈕上的camera圖片為cameraImage變數
    //並將cameraImage設定成按鈕背景
    UIImage *cameraImage=[UIImage imageNamed:@"camera.png"];
    [cameraBtn setBackgroundImage:cameraImage forState:UIControlStateNormal];
    [self.view addSubview:cameraBtn];
    //宣告record變數
    UIButton *recordBtn;
    recordBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCoordinateOfBtns=20;
    yCoordinateOfBtns=633;
    recordBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    
    //宣告按鈕上的record圖片為recordImage變數
    //並將recordImage設定成按鈕背景
    UIImage *recordImage=[UIImage imageNamed:@"rec.png"];
    [recordBtn setBackgroundImage:recordImage forState:UIControlStateNormal];
    [self.view addSubview:recordBtn];
    
    //宣告brightnessUp變數
    UIButton *brightnessUpBtn;
    brightnessUpBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCoordinateOfBtns=894;
    yCoordinateOfBtns=153;
    brightnessUpBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    
    //宣告按鈕上的brightnessUp圖片為brightnessUpImage變數
    //並將brightnessUpImage設定成按鈕背景
    UIImage *brightnessUpImage=[UIImage imageNamed:@"brigthness_add.png"];
    [brightnessUpBtn setBackgroundImage:brightnessUpImage forState:UIControlStateNormal];
    [self.view addSubview:brightnessUpBtn];
    
    //宣告brightnessDown變數
    UIButton *brightnessDownBtn;
    brightnessDownBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCoordinateOfBtns=894;
    yCoordinateOfBtns=313;
    brightnessDownBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    
    //宣告按鈕上的brightnessDown圖片為brightnessDownImage變數
    //並將brightnessDownImage設定成按鈕背景
    UIImage *brightnessDownImage=[UIImage imageNamed:@"brigthness_down.png"];
    [brightnessDownBtn setBackgroundImage:brightnessDownImage forState:UIControlStateNormal];
    [self.view addSubview:brightnessDownBtn];
    
    //宣告playBack變數
    UIButton *playBackBtn;
    playBackBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCoordinateOfBtns=894;
    yCoordinateOfBtns=473;
    playBackBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    
    //宣告按鈕上的playBack圖片為playBackImage變數
    //並將playBackImage設定成按鈕背景
    UIImage *playBackImage=[UIImage imageNamed:@"play_back.png"];
    [playBackBtn setBackgroundImage:playBackImage forState:UIControlStateNormal];
    [self.view addSubview:playBackBtn];
    
    //宣告screenLock變數
    UIButton *screenLockBtn;
    screenLockBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    xCoordinateOfBtns=894;
    yCoordinateOfBtns=633;
    screenLockBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    
    //宣告按鈕上的playBack圖片為playBackImage變數
    //並將playBackImage設定成按鈕背景
    UIImage *screenLockImage=[UIImage imageNamed:@"screen_lock.png"];
    [screenLockBtn setBackgroundImage:screenLockImage forState:UIControlStateNormal];
    [self.view addSubview:screenLockBtn];
    
    //加入LOGO
    NSInteger xCoordinateOfImgs=874;
    NSInteger yCoordinateOfImgs=0;
    
    UIImageView* imgView = [[UIImageView alloc] initWithFrame:CGRectMake(xCoordinateOfImgs*xScale, yCoordinateOfImgs*yScale, LOGO_WIDTH, LOGO_HEIGHT)];
    imgView.image = [UIImage imageNamed:@"wifi_logo.png"];
    [self.view addSubview:imgView];
    
    
    
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
