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
#define PICTURE_IP_CAMERA_HEIGHT 768
#define PICTURE_IP_CAMERA_WIDTH 740

@interface ViewController (){
    
}

@end

@implementation ViewController
@synthesize theMenuBtn=_theMenuBtn;
@synthesize theZoomBtn=_theZoomBtn;
@synthesize theCameraBtn=_theCameraBtn;
@synthesize theRecBtn=_theRecBtn;
@synthesize theBrightnessUpBtn=_theBrightnessUpBtn;
@synthesize theBrightnessDownBtn=_theBrightnessDownBtn;
@synthesize thePlayBackBtn=_thePlayBackBtn;
@synthesize theScreenLockBtn=_theScreenLockBtn;

@synthesize menuViewController=_menuViewController;

-(MenuViewController *)menuViewController{
    
    if (_menuViewController==nil) {
        _menuViewController=[[MenuViewController alloc]initWithNibName:@"MenuViewController" bundle:nil];
    }
    
    return _menuViewController;
}

-(UIButton*)theScreenLockBtn{
    if (_theScreenLockBtn==nil) {
        _theScreenLockBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_theScreenLockBtn setBackgroundImage:[UIImage imageNamed:@"TheLockBtn.png"] forState:UIControlStateNormal];
        
    }
    return _theScreenLockBtn;
}

-(UIButton*)thePlayBackBtn{
    if (_thePlayBackBtn==nil) {
        _thePlayBackBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_thePlayBackBtn setBackgroundImage:[UIImage imageNamed:@"ThePlayBackBtn.png"] forState:UIControlStateNormal];
        
    }
    return _thePlayBackBtn;
}


-(UIButton*)theBrightnessDownBtn{
    if (_theBrightnessDownBtn==nil) {
        _theBrightnessDownBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_theBrightnessDownBtn setBackgroundImage:[UIImage imageNamed:@"TheBrightnessDownBtn.png.png"] forState:UIControlStateNormal];
        
    }
    return _theBrightnessDownBtn;
}

-(UIButton*)theBrightnessUpBtn{
    if (_theBrightnessUpBtn==nil) {
        _theBrightnessUpBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_theBrightnessUpBtn setBackgroundImage:[UIImage imageNamed:@"TheBrightnessUpBtn.png"] forState:UIControlStateNormal];
        
    }
    return _theBrightnessUpBtn;
}

-(UIButton*)theRecBtn{
    if (_theRecBtn==nil) {
        _theRecBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_theRecBtn setBackgroundImage:[UIImage imageNamed:@"TheRecordBtn.png"] forState:UIControlStateNormal];
        
    }
    return _theRecBtn;
}

-(UIButton*)theMenuBtn{
    if (_theMenuBtn==nil) {
        _theMenuBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"menu.png"];
        [_theMenuBtn setBackgroundImage:[UIImage imageNamed:@"TheMenuBtn.png"] forState:UIControlStateNormal];
             
    }
    return _theMenuBtn;
}

-(UIButton*)theZoomBtn{
    if (_theZoomBtn==nil) {
        _theZoomBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *zoomImage = [UIImage imageNamed:@"zoom.png"];
        [_theZoomBtn setBackgroundImage:[UIImage imageNamed:@"zoom.png"] forState:UIControlStateNormal];
        
    }
  
    return _theZoomBtn;
}

-(UIButton*)theCameraBtn{
    if (_theCameraBtn==nil) {
        _theCameraBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"camera.png"];
        [_theCameraBtn setBackgroundImage:[UIImage imageNamed:@"TheCameraBtn-Normal.png"] forState:UIControlStateNormal];
        
    }
    return _theCameraBtn;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
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
    
    //加入"影像"部分
    NSInteger xCoordinateOfImgs=142;
    NSInteger yCoordinateOfImgs=0;
    UIImageView* imgViewFromIPCamera= [[UIImageView alloc] initWithFrame:CGRectMake(xCoordinateOfImgs*xScale,yCoordinateOfImgs*yScale, PICTURE_IP_CAMERA_WIDTH,PICTURE_IP_CAMERA_HEIGHT)];
    imgViewFromIPCamera.image = [UIImage imageNamed:@"Img_IPCamera.png"];
    [self.view addSubview:imgViewFromIPCamera];

    
       //加入HomeLabel
    NSInteger xCoordinateOfLabel=16;
    NSInteger yCoordinateOfLabel=50;
    UILabel *label_word = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, 110, 50)];
    NSString *title = [NSString stringWithFormat:@"Homeee"];
    [label_word setText:title];
    [label_word setNumberOfLines:2];
    [label_word setLineBreakMode:label_word.lineBreakMode];
    [label_word setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [label_word setTextColor:[UIColor whiteColor]];
    [label_word setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:label_word];
    
    //按鈕的xy座標(針對將來不同裝置的長寬考量)
    NSInteger xCoordinateOfBtns=0;
    NSInteger yCoordinateOfBtns=0;
    // 加入Menubtn
    xCoordinateOfBtns=16;
    yCoordinateOfBtns=314;
    self.theMenuBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    
    [self.theMenuBtn addTarget:self
                        action:@selector(menuBtnPressed:)
              forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.theMenuBtn];
    //加入ScreenLockBtn
    xCoordinateOfBtns=16;
    yCoordinateOfBtns=478;
    self.theScreenLockBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.theScreenLockBtn addTarget:self
                              action:@selector(lockBtnPressed:)
                    forControlEvents:UIControlEventTouchDown];
    //加入RecordBtn
    xCoordinateOfBtns=16;
    yCoordinateOfBtns=642;
    self.theRecBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.theRecBtn addTarget:self
                       action:@selector(RecBtnPressed:)
             forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.theRecBtn];
    
    //加入BrightnessUpBtn
    xCoordinateOfBtns=898;
    yCoordinateOfBtns=150;
    self.theBrightnessUpBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.view addSubview:self.theBrightnessUpBtn];
    
    //加入brightnessDown
    xCoordinateOfBtns=898;
    yCoordinateOfBtns=314;
    self.theBrightnessDownBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.view addSubview:self.theBrightnessDownBtn];
    
    //加入playBackBtn
    xCoordinateOfBtns=894;
    yCoordinateOfBtns=473;
    self.thePlayBackBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.view addSubview:self.thePlayBackBtn];
    
    //加入cameraBtn-Normal
    xCoordinateOfBtns=898;
    yCoordinateOfBtns=642;
    self.theCameraBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.view addSubview:self.theCameraBtn];
    [self.view addSubview:self.theScreenLockBtn];
    
    
}

-(void)menuBtnPressed:(UIButton *)btn{
    NSLog(@"Hi");
    
    NSLog(@" %p ",self.menuViewController);
    
    // 按下Menu鍵後,進入Menu畫面
    self.menuViewController.modalTransitionStyle=UIModalTransitionStyleCoverVertical;
    [self presentViewController:self.menuViewController animated:YES completion:nil];
}

-(void)lockBtnPressed:(UIButton *)btn{
   NSLog(@"Hi");
    
    
//    UIImage *brightnessUpImage=[UIImage imageNamed:@"brigthness_add.png"];
//    [btn setBackgroundImage:brightnessUpImage forState:UIControlStateNormal];
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
