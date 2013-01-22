//
//  WiFiSettingViewController.m
//  streamingVideo
//
//  Created by opcom on 13/1/22.
//  Copyright (c) 2013年 opcom. All rights reserved.
//

#import "WiFiSettingViewController.h"
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

#define SETTING_BUTTON_HEIGHT 57           //可調
#define SETTING_BUTTON_WIDTH  260         //和Home-Menu不同(可調)
#define NUMBER_OF_SETTING_BUTTONS 4       //可調
#define INTERSPACE_BETWEEN_TWO_BUTTONS 50 // 可調



@interface WiFiSettingViewController ()

@end

@implementation WiFiSettingViewController
@synthesize bk2HomeMenuBtn=_bk2HomeMenuBtn;
@synthesize theUpBtn=_theUpBtn;
@synthesize theDownBtn=_theDownBtn;
@synthesize theOKBtn=_theOKBtn;


-(UIButton*)bk2HomeMenuBtn{
    if (_bk2HomeMenuBtn==nil) {
        _bk2HomeMenuBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_bk2HomeMenuBtn setBackgroundImage:[UIImage imageNamed:@"TheReturnBtn.png"] forState:UIControlStateNormal];
        
    }
    return _bk2HomeMenuBtn;
}

-(UIButton*)theUpBtn{
    if (_theUpBtn==nil) {
        _theUpBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_theUpBtn setBackgroundImage:[UIImage imageNamed:@"TheUpBtn.png"] forState:UIControlStateNormal];
        
    }
    return _theUpBtn;
}


-(UIButton*)theOKBtn{
    if (_theOKBtn==nil) {
        _theOKBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_theOKBtn setBackgroundImage:[UIImage imageNamed:@"TheOKBtn.png"] forState:UIControlStateNormal];
        
    }
    return _theOKBtn;
}

-(UIButton*)theDownBtn{
    if (_theDownBtn==nil) {
        _theDownBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        //UIImage *menuImage = [UIImage imageNamed:@"rec.png"];
        [_theDownBtn setBackgroundImage:[UIImage imageNamed:@"TheDownBtn.png"] forState:UIControlStateNormal];
        
    }
    return _theDownBtn;
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
    
    //取得ipad的長(height)和寬(width)
    CGRect windowRect = [[UIScreen mainScreen]bounds];
    //長寬的scale(針對將來不同裝置的長寬考量)
    NSInteger yScale=WINDOW_HEIGHT_HORIZONTAL/WINDOW_HEIGHT_BASE;
    NSInteger xScale=WINDOW_WIDTH_HORIZONTAL/WINDOW_WIDTH_BASE;
    
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
   
    //加入Wi-Fi Setting Label(WiFi字樣)
    NSInteger xCoordinateOfLabel=16;
    NSInteger yCoordinateOfLabel=50;
    UILabel *label_word = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, 110, 50)];
    NSString *title = [NSString stringWithFormat:@"Wi-Fi"];
    [label_word setText:title];
    [label_word setNumberOfLines:2];
    [label_word setLineBreakMode:label_word.lineBreakMode];
    [label_word setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [label_word setTextColor:[UIColor whiteColor]];
    [label_word setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:label_word];
    //加入Wi-Fi Setting Label(Setting字樣)
    xCoordinateOfLabel=16;
    yCoordinateOfLabel=50+50;
   UILabel *label_word2 = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, 110, 50)];
    title = [NSString stringWithFormat:@"Setting"];
    [label_word2 setText:title];
    [label_word2 setNumberOfLines:2];
    [label_word2 setLineBreakMode:label_word2.lineBreakMode];
    [label_word2 setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [label_word2 setTextColor:[UIColor whiteColor]];
    [label_word2 setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:label_word2];
    //按鈕的xy座標(針對將來不同裝置的長寬考量)
    NSInteger xCoordinateOfBtns=0;
    NSInteger yCoordinateOfBtns=0;
    //加入綠色影像
    NSInteger xCoordinateOfImgs=142;
    NSInteger yCoordinateOfImgs=0;
    UIImageView* imgViewFromIPCameraGreenBG= [[UIImageView alloc] initWithFrame:CGRectMake(xCoordinateOfImgs*xScale,yCoordinateOfImgs*yScale, PICTURE_IP_CAMERA_WIDTH,PICTURE_IP_CAMERA_HEIGHT)];
    imgViewFromIPCameraGreenBG.image = [UIImage imageNamed:@"Img_IPCamera_GreenBG.png"];
    [self.view addSubview:imgViewFromIPCameraGreenBG];
    
    //加入bk2HomeMenu-WifiSetting
    xCoordinateOfBtns=898;
    yCoordinateOfBtns=150;
    self.bk2HomeMenuBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.bk2HomeMenuBtn addTarget:self
                        action:@selector(bk2HomeMenuBtnPressed:)                    forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.bk2HomeMenuBtn];
    
    //加入TheUpBtn
    xCoordinateOfBtns=898;
    yCoordinateOfBtns=314;
    self.theUpBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.view addSubview:self.theUpBtn];
    //加入TheOKBtn
    xCoordinateOfBtns=894;
    yCoordinateOfBtns=473;
    self.theOKBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.view addSubview:self.theOKBtn];
    //加入TheDownBtn
    xCoordinateOfBtns=898;
    yCoordinateOfBtns=642;
    self.theDownBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);    
    [self.view addSubview:self.theDownBtn];
    
    //加入SSID Label
    
    xCoordinateOfLabel=((WINDOW_WIDTH_HORIZONTAL-PICTURE_IP_CAMERA_WIDTH)/2)+((PICTURE_IP_CAMERA_WIDTH-2*(SETTING_BUTTON_WIDTH))/3);
    
    ;
    yCoordinateOfLabel=(WINDOW_HEIGHT_HORIZONTAL-(NUMBER_OF_SETTING_BUTTONS-1)*INTERSPACE_BETWEEN_TWO_BUTTONS-NUMBER_OF_SETTING_BUTTONS*SETTING_BUTTON_HEIGHT)/2;
    
    NSLog(@"第一個btn的Y坐標 %d",yCoordinateOfLabel);
    UILabel *SSIDlabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    
    
    NSString *SSIDtitle = [NSString stringWithFormat:@"SSID"];
    [SSIDlabel setText:SSIDtitle];
    [SSIDlabel setNumberOfLines:2];
    [SSIDlabel setLineBreakMode:SSIDlabel.lineBreakMode];
    [SSIDlabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [SSIDlabel setTextColor:[UIColor whiteColor]];
    [SSIDlabel setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:SSIDlabel];
    
    //加入Current Password Label
    yCoordinateOfLabel=yCoordinateOfLabel+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    
    NSLog(@"第二個btn的Y坐標 %d",yCoordinateOfLabel);
    UILabel *CurrentPasswordlabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    NSString *CurrentPasswordtitle = [NSString stringWithFormat:@"Current Password"];
    [CurrentPasswordlabel setText:CurrentPasswordtitle];
    [CurrentPasswordlabel setNumberOfLines:2];
    [CurrentPasswordlabel setLineBreakMode:CurrentPasswordlabel.lineBreakMode];
    [CurrentPasswordlabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [CurrentPasswordlabel setTextColor:[UIColor whiteColor]];
    [CurrentPasswordlabel setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:CurrentPasswordlabel];
    
    //加入New Password Label
    yCoordinateOfLabel=yCoordinateOfLabel+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    
   
    UILabel *NewPasswordlabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    NSString *NewPasswordtitle = [NSString stringWithFormat:@"New Password"];
    [NewPasswordlabel setText:NewPasswordtitle];
    [NewPasswordlabel setNumberOfLines:2];
    [NewPasswordlabel setLineBreakMode:NewPasswordlabel.lineBreakMode];
    [NewPasswordlabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [NewPasswordlabel setTextColor:[UIColor whiteColor]];
    [NewPasswordlabel setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:NewPasswordlabel];
    
    //加入Confirm Password Label
    yCoordinateOfLabel=yCoordinateOfLabel+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    
    
    UILabel *ConfirmPasswordlabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    NSString *ConfirmPasswordtitle = [NSString stringWithFormat:@"Confirm Password"];
    [ConfirmPasswordlabel setText:ConfirmPasswordtitle];
    [ConfirmPasswordlabel setNumberOfLines:2];
    [ConfirmPasswordlabel setLineBreakMode:ConfirmPasswordlabel.lineBreakMode];
    [ConfirmPasswordlabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [ConfirmPasswordlabel setTextColor:[UIColor whiteColor]];
    [ConfirmPasswordlabel setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:ConfirmPasswordlabel];
    
    // 這部分待改
    //User 移動上下鍵時 可以更改SSID的內容,目前先白色Label代替
    
    //加入針對SSID的白色Label
    xCoordinateOfLabel=((WINDOW_WIDTH_HORIZONTAL-PICTURE_IP_CAMERA_WIDTH)/2)+((PICTURE_IP_CAMERA_WIDTH-2*(SETTING_BUTTON_WIDTH))/3)+SETTING_BUTTON_WIDTH+((PICTURE_IP_CAMERA_WIDTH-SETTING_BUTTON_WIDTH*2)/3);
    
    yCoordinateOfLabel=(WINDOW_HEIGHT_HORIZONTAL-(NUMBER_OF_SETTING_BUTTONS-1)*INTERSPACE_BETWEEN_TWO_BUTTONS-NUMBER_OF_SETTING_BUTTONS*SETTING_BUTTON_HEIGHT)/2;
    
    NSLog(@"第一個btn的Y坐標 %d",yCoordinateOfLabel);
    UILabel *TextFieldForSSIDlabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    
    
    NSString *TextFieldForSSIDtitle = [NSString stringWithFormat:@"WiFi-Cam_Ray"];
    [TextFieldForSSIDlabel setText:TextFieldForSSIDtitle];
    [TextFieldForSSIDlabel setNumberOfLines:2];
    [TextFieldForSSIDlabel setTextAlignment:UITextAlignmentCenter]; // Label的字置中
    
    [TextFieldForSSIDlabel setLineBreakMode:TextFieldForSSIDlabel.lineBreakMode];
    [TextFieldForSSIDlabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [TextFieldForSSIDlabel setTextColor:[UIColor blackColor]];
    [TextFieldForSSIDlabel setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:TextFieldForSSIDlabel];
    
    //加入針對Current Password的白色Label
    yCoordinateOfLabel=yCoordinateOfLabel+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
         
    UILabel *TextFieldForCurrentPasswordlabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    
    
    NSString *TextFieldForCurrentPasswordtitle = [NSString stringWithFormat:@" "];
    [TextFieldForCurrentPasswordlabel setText:TextFieldForCurrentPasswordtitle];
    [TextFieldForCurrentPasswordlabel setNumberOfLines:2];
    //[TextFieldForCurrentPasswordlabel setTextAlignment:UITextAlignmentCenter]; // Label的字置中
    
    [TextFieldForCurrentPasswordlabel setLineBreakMode:TextFieldForCurrentPasswordlabel.lineBreakMode];
    [TextFieldForCurrentPasswordlabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [TextFieldForCurrentPasswordlabel setTextColor:[UIColor blackColor]];
    [TextFieldForCurrentPasswordlabel setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:TextFieldForCurrentPasswordlabel];
    
    //加入針對New Password的白色Label
    yCoordinateOfLabel=yCoordinateOfLabel+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    
    UILabel *TextFieldForNewPasswordlabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    
    
    NSString *TextFieldForNewPasswordtitle = [NSString stringWithFormat:@" "];
    [TextFieldForNewPasswordlabel setText:TextFieldForNewPasswordtitle];
    [TextFieldForNewPasswordlabel setNumberOfLines:2];
    //[TextFieldForCurrentPasswordlabel setTextAlignment:UITextAlignmentCenter]; // Label的字置中
    
    [TextFieldForNewPasswordlabel setLineBreakMode:TextFieldForNewPasswordlabel.lineBreakMode];
    [TextFieldForNewPasswordlabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [TextFieldForNewPasswordlabel setTextColor:[UIColor blackColor]];
    [TextFieldForNewPasswordlabel setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:TextFieldForNewPasswordlabel];
    
    //加入針對Confirm Password的白色Label
    yCoordinateOfLabel=yCoordinateOfLabel+1*SETTING_BUTTON_HEIGHT+1*INTERSPACE_BETWEEN_TWO_BUTTONS;
    
    UILabel *TextFieldForConfirmPasswordlabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    
    
    NSString *TextFieldForConfirmPasswordtitle = [NSString stringWithFormat:@" "];
    [TextFieldForConfirmPasswordlabel setText:TextFieldForConfirmPasswordtitle];
    [TextFieldForConfirmPasswordlabel setNumberOfLines:2];
    //[TextFieldForCurrentPasswordlabel setTextAlignment:UITextAlignmentCenter]; // Label的字置中
    
    [TextFieldForConfirmPasswordlabel setLineBreakMode:TextFieldForConfirmPasswordlabel.lineBreakMode];
    [TextFieldForConfirmPasswordlabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [TextFieldForConfirmPasswordlabel setTextColor:[UIColor blackColor]];
    [TextFieldForConfirmPasswordlabel setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:TextFieldForConfirmPasswordlabel];
    //
    
    


}
-(void)bk2HomeMenuBtnPressed:(UIButton *)btn{
    
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
