//
//  HomeMenuVideoSettingViewController.m
//  streamingVideo
//
//  Created by opcom on 13/1/22.
//  Copyright (c) 2013年 opcom. All rights reserved.
//

#import "HomeMenuVideoSettingViewController.h"
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
#define SETTING_BUTTON_WIDTH  260 //和Home-Menu不同
#define NUMBER_OF_SETTING_BUTTONS 2
#define INTERSPACE_BETWEEN_TWO_BUTTONS 50


@interface HomeMenuVideoSettingViewController ()

@end

@implementation HomeMenuVideoSettingViewController
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
    //按鈕的xy座標(針對將來不同裝置的長寬考量)
    NSInteger xCoordinateOfBtns=0;
    NSInteger yCoordinateOfBtns=0;
    //加入綠色影像
    NSInteger xCoordinateOfImgs=142;
    NSInteger yCoordinateOfImgs=0;
    UIImageView* imgViewFromIPCameraGreenBG= [[UIImageView alloc] initWithFrame:CGRectMake(xCoordinateOfImgs*xScale,yCoordinateOfImgs*yScale, PICTURE_IP_CAMERA_WIDTH,PICTURE_IP_CAMERA_HEIGHT)];
    imgViewFromIPCameraGreenBG.image = [UIImage imageNamed:@"Img_IPCamera_GreenBG.png"];
    [self.view addSubview:imgViewFromIPCameraGreenBG];
    
    //加入bk2HomeMenu-VideoSetting
    xCoordinateOfBtns=898;
    yCoordinateOfBtns=150;
    self.bk2HomeMenuBtn.frame=CGRectMake(xCoordinateOfBtns*xScale,yCoordinateOfBtns*yScale,BUTTON_HEIGHT,BUTTON_WIDTH);
    [self.bk2HomeMenuBtn addTarget:self
                                       action:@selector(bk2HomeMenuBtnPressed:)                    forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:self.bk2HomeMenuBtn];
    //加入Video Setting Label(Video字樣)
    NSInteger xCoordinateOfLabel=16;
    NSInteger yCoordinateOfLabel=50;
    UILabel *label_word = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, 110, 50)];
    NSString *title = [NSString stringWithFormat:@"Video"];
    [label_word setText:title];
    [label_word setNumberOfLines:2];
    [label_word setLineBreakMode:label_word.lineBreakMode];
    [label_word setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [label_word setTextColor:[UIColor whiteColor]];
    [label_word setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:label_word];
    //加入Video Setting Label(Setting字樣)
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
    
    //加入Current Profile Label
    
    xCoordinateOfLabel=((WINDOW_WIDTH_HORIZONTAL-PICTURE_IP_CAMERA_WIDTH)/2)+((PICTURE_IP_CAMERA_WIDTH-2*(SETTING_BUTTON_WIDTH))/3);
    
    ;
    
    
    yCoordinateOfLabel=(WINDOW_HEIGHT_HORIZONTAL-(NUMBER_OF_SETTING_BUTTONS-1)*INTERSPACE_BETWEEN_TWO_BUTTONS-NUMBER_OF_SETTING_BUTTONS*SETTING_BUTTON_HEIGHT)/2;
    
    NSLog(@"第一個btn的Y坐標 %d",yCoordinateOfLabel);
    UILabel *CurrentProfilelabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    
    
    NSString *CurrentProfiletitle = [NSString stringWithFormat:@"Current Profile"];
    [CurrentProfilelabel setText:CurrentProfiletitle];
    [CurrentProfilelabel setNumberOfLines:2];
    [CurrentProfilelabel setLineBreakMode:CurrentProfilelabel.lineBreakMode];
    [CurrentProfilelabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [CurrentProfilelabel setTextColor:[UIColor whiteColor]];
    [CurrentProfilelabel setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:CurrentProfilelabel];
    
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
    
    // 這部分待改
    //User 移動上下鍵時 可以更改Current Profile的內容,目前先白色Label代替
    //要做成ComboBox
    
    //加入針對Current Profile的白色Label
    xCoordinateOfLabel=((WINDOW_WIDTH_HORIZONTAL-PICTURE_IP_CAMERA_WIDTH)/2)+((PICTURE_IP_CAMERA_WIDTH-2*(SETTING_BUTTON_WIDTH))/3)+SETTING_BUTTON_WIDTH+((PICTURE_IP_CAMERA_WIDTH-SETTING_BUTTON_WIDTH*2)/3);
    
    yCoordinateOfLabel=(WINDOW_HEIGHT_HORIZONTAL-(NUMBER_OF_SETTING_BUTTONS-1)*INTERSPACE_BETWEEN_TWO_BUTTONS-NUMBER_OF_SETTING_BUTTONS*SETTING_BUTTON_HEIGHT)/2;
    
    NSLog(@"第一個btn的Y坐標 %d",yCoordinateOfLabel);
    UILabel *TextFieldForCurrentProfilelabel = [[UILabel alloc] initWithFrame:CGRectMake(xCoordinateOfLabel*xScale, yCoordinateOfLabel*xScale, SETTING_BUTTON_WIDTH,SETTING_BUTTON_HEIGHT)];
    
    
    NSString *TextFieldForSSIDtitle = [NSString stringWithFormat:@"MPEG4 480P"];
    [TextFieldForCurrentProfilelabel setText:TextFieldForSSIDtitle];
    [TextFieldForCurrentProfilelabel setNumberOfLines:2];
    [TextFieldForCurrentProfilelabel setTextAlignment:UITextAlignmentCenter]; // Label的字置中
    
    [TextFieldForCurrentProfilelabel setLineBreakMode:TextFieldForCurrentProfilelabel.lineBreakMode];
    [TextFieldForCurrentProfilelabel setFont:[UIFont fontWithName:@"Arial-BoldMT" size:28]];
    [TextFieldForCurrentProfilelabel setTextColor:[UIColor blackColor]];
    [TextFieldForCurrentProfilelabel setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:TextFieldForCurrentProfilelabel];
    


    

    
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
