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
#define PICTURE_IP_CAMERA_HEIGHT 768
#define PICTURE_IP_CAMERA_WIDTH 740
#define SETTING_BUTTON_HEIGHT 57
#define SETTING_BUTTON_WIDTH  358 
#define NUMBER_OF_SETTING_BUTTONS 6
#define INTERSPACE_BETWEEN_TWO_BUTTONS 46.8


@interface MenuViewController ()

@end

@implementation MenuViewController
@synthesize bk2MenuBtn=_bk2MenuBtn;
@synthesize settingBtnWifi=_settingBtnWifi;
@synthesize settingBtnVideoSetting=_settingBtnVideoSetting;
@synthesize settingBtnChooseStoragePath=_settingBtnChooseStoragePath;
@synthesize settingBtnResetToDefault=_settingBtnResetToDefault;
@synthesize settingBtnAbout=_settingBtnAbout;
@synthesize settingBtnVideoMode=_settingBtnVideoMode;
@synthesize wiFiSettingViewController=_wiFiSettingViewController;
@synthesize homeMenuVideoSettingViewController=_homeMenuVideoSettingViewController;
@synthesize homeMenuVideoModeViewController=_homeMenuVideoModeViewController;

-(HomeMenuVideoModeViewController*)homeMenuVideoModeViewController{
    
    if (_homeMenuVideoModeViewController==nil) {
        _homeMenuVideoModeViewController=[[HomeMenuVideoModeViewController alloc]initWithNibName:@"HomeMenuVideoModeViewController" bundle:nil];
    }
    
    return _homeMenuVideoModeViewController;
}

-(HomeMenuVideoSettingViewController*)homeMenuVideoSettingViewController{
    
    if (_homeMenuVideoSettingViewController==nil) {
      _homeMenuVideoSettingViewController=[[HomeMenuVideoSettingViewController alloc]initWithNibName:@"HomeMenuVideoSettingViewController" bundle:nil];
    }
    
    return _homeMenuVideoSettingViewController;
}

-(WiFiSettingViewController*)wiFiSettingViewController{
    
    if (_wiFiSettingViewController==nil) {
        _wiFiSettingViewController=[[WiFiSettingViewController alloc]initWithNibName:@"WiFiSettingViewController" bundle:nil];
    }
    
    return _wiFiSettingViewController;
}


-(UIButton*)settingBtnAbout{
    
    if (_settingBtnAbout==nil) {
        _settingBtnAbout=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _settingBtnAbout.titleLabel.font=[UIFont fontWithName:@"Arial-BoldMT" size:30];
        
        [_settingBtnAbout setTitle:@"About" forState: UIControlStateNormal];
        
    }
    
    return _settingBtnAbout;
}

-(UIButton*)settingBtnResetToDefault{
    
    if (_settingBtnResetToDefault==nil) {
        _settingBtnResetToDefault=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _settingBtnResetToDefault.titleLabel.font=[UIFont fontWithName:@"Arial-BoldMT" size:30];
        
        [_settingBtnResetToDefault setTitle:@"Reset to Default" forState: UIControlStateNormal];
        
    }
    
    return _settingBtnResetToDefault;
}


-(UIButton*)settingBtnChooseStoragePath{
    
    if (_settingBtnChooseStoragePath==nil) {
        _settingBtnChooseStoragePath=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _settingBtnChooseStoragePath.titleLabel.font=[UIFont fontWithName:@"Arial-BoldMT" size:30];
        
        [_settingBtnChooseStoragePath setTitle:@"Choose Storage Path" forState: UIControlStateNormal];
        
    }
    
    return _settingBtnChooseStoragePath;
}


-(UIButton*)settingBtnVideoMode{
    
    if (_settingBtnVideoMode==nil) {
        _settingBtnVideoMode=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _settingBtnVideoMode.titleLabel.font=[UIFont fontWithName:@"Arial-BoldMT" size:30];
        
        [_settingBtnVideoMode setTitle:@"Video Mode" forState: UIControlStateNormal];
        
    }
    
    return _settingBtnVideoMode;
}


-(UIButton*)settingBtnVideoSetting{
    
    if (_settingBtnVideoSetting==nil) {
        _settingBtnVideoSetting=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _settingBtnVideoSetting.titleLabel.font=[UIFont fontWithName:@"Arial-BoldMT" size:30];
       
        [_settingBtnVideoSetting setTitle:@"Video Setting" forState: UIControlStateNormal];
        
    }
    
    return _settingBtnVideoSetting;
}


-(UIButton*)settingBtnWifi{
    
    if (_settingBtnWifi==nil) {
        _settingBtnWifi=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        _settingBtnWifi.titleLabel.font=[UIFont fontWithName:@"Arial-BoldMT" size:30];
        //_settingBtnWifi.frame=CGRectMake(100.0f, 150.0f, 120.0f, 30.0f);
        [_settingBtnWifi setTitle:@"Wi-Fi Setting" forState: UIControlStateNormal];
        //[_settingBtnWifi setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    }
    
    return _settingBtnWifi;
}

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
    // 工作流程測試
    NSLog(@"opcom");
    
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
//    //長寬的scale(針對將來不同裝置的長寬考量)
    NSInteger yScale=WINDOW_HEIGHT_HORIZONTAL/WINDOW_HEIGHT_BASE;
    NSInteger xScale=WINDOW_WIDTH_HORIZONTAL/WINDOW_WIDTH_BASE;
//    
//    //按鈕的xy座標(針對將來不同裝置的長寬考量)
    NSInteger xCoordinateOfBtns=0;
    NSInteger yCoordinateOfBtns=0;
    //加入bk2HomeBtn
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
    
    //加入綠色影像
    NSInteger xCoordinateOfImgs=142;
    NSInteger yCoordinateOfImgs=0;
    UIImageView* imgViewFromIPCameraGreenBG= [[UIImageView alloc] initWithFrame:CGRectMake(xCoordinateOfImgs*xScale,yCoordinateOfImgs*yScale, PICTURE_IP_CAMERA_WIDTH,PICTURE_IP_CAMERA_HEIGHT)];
    imgViewFromIPCameraGreenBG.image = [UIImage imageNamed:@"Img_IPCamera_GreenBG.png"];
    [self.view addSubview:imgViewFromIPCameraGreenBG];
    
    // 加入白色Wifi-Btn
    
    xCoordinateOfBtns=(WINDOW_WIDTH_HORIZONTAL-SETTING_BUTTON_WIDTH)/2;
    NSLog(@"%d",xCoordinateOfBtns);
    

    yCoordinateOfBtns=(WINDOW_HEIGHT_HORIZONTAL-(NUMBER_OF_SETTING_BUTTONS-1)*INTERSPACE_BETWEEN_TWO_BUTTONS-NUMBER_OF_SETTING_BUTTONS*SETTING_BUTTON_HEIGHT)/2;
    NSLog(@"%d",yCoordinateOfBtns);
    
    
    self.settingBtnWifi.frame=CGRectMake(xCoordinateOfBtns,yCoordinateOfBtns,SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT);
    
    [self.settingBtnWifi addTarget:self
                        action:@selector(settingBtnWifiPressed:)                    forControlEvents:UIControlEventTouchDown];
    
   [self.view addSubview:self.settingBtnWifi];
   //加入白色Video Setting Btn
    yCoordinateOfBtns=yCoordinateOfBtns+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    
    self.settingBtnVideoSetting.frame=CGRectMake(xCoordinateOfBtns,yCoordinateOfBtns,SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT);
    
    [self.settingBtnVideoSetting addTarget:self
                            action:@selector(settingBtnVideoSettingPressed:)                    forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:self.settingBtnVideoSetting];
    // 加入白色Video Mode
    yCoordinateOfBtns=yCoordinateOfBtns+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;    
    self.settingBtnVideoMode.frame=CGRectMake(xCoordinateOfBtns,yCoordinateOfBtns,SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT);
    
    [self.settingBtnVideoMode addTarget:self
                                    action:@selector(settingBtnVideoModdePressed:)                    forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:self.settingBtnVideoMode];
    // 加入白色Choose Storage Path
    yCoordinateOfBtns=yCoordinateOfBtns+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    self.settingBtnChooseStoragePath.frame=CGRectMake(xCoordinateOfBtns,yCoordinateOfBtns,SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT);
    [self.view addSubview:self.settingBtnChooseStoragePath];
    
    // 加入白色Reset to Default
    yCoordinateOfBtns=yCoordinateOfBtns+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    self.settingBtnResetToDefault.frame=CGRectMake(xCoordinateOfBtns,yCoordinateOfBtns,SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT);
    [self.view addSubview:self.settingBtnResetToDefault];
    
    // 加入白色About
    yCoordinateOfBtns=yCoordinateOfBtns+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    self.settingBtnAbout.frame=CGRectMake(xCoordinateOfBtns,yCoordinateOfBtns,SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT);
    [self.view addSubview:self.settingBtnAbout];
    

}

-(void)settingBtnVideoModdePressed:(UIButton*)btn{
    self.homeMenuVideoModeViewController.modalTransitionStyle=UIModalTransitionStyleCoverVertical;
    [self presentViewController:self.homeMenuVideoModeViewController animated:YES completion:nil];
    
}

-(void)settingBtnVideoSettingPressed:(UIButton*)btn{
    
    self.homeMenuVideoSettingViewController.modalTransitionStyle=UIModalTransitionStyleCoverVertical;
    [self presentViewController:self.homeMenuVideoSettingViewController animated:YES completion:nil];
    
}

-(void)settingBtnWifiPressed:(UIButton *)btn{
    
    NSLog(@"%p",self);
    
    // 按下WiFiSetting鍵後,進入WiFiSetting畫面
    self.wiFiSettingViewController.modalTransitionStyle=UIModalTransitionStyleCoverVertical;
    [self presentViewController:self.wiFiSettingViewController animated:YES completion:nil];
    
    NSLog(@"%p",self);
    
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
