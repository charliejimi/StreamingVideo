//
//  MenuViewController.h
//  streamingVideo
//
//  Created by Charlie  on 13/1/20.
//  Copyright (c) 2013年 opcom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WiFiSettingViewController.h"
#import "HomeMenuVideoSettingViewController.h"
#import "HomeMenuVideoModeViewController.h"

@interface MenuViewController : UIViewController

@property (nonatomic,strong) UIButton *bk2MenuBtn;
@property (nonatomic,strong) UIButton *settingBtnWifi;
@property (nonatomic,strong) UIButton *settingBtnVideoSetting;
@property (nonatomic,strong) UIButton *settingBtnVideoMode;
@property (nonatomic,strong) UIButton *settingBtnChooseStoragePath;
@property (nonatomic,strong) UIButton *settingBtnResetToDefault;
@property (nonatomic,strong) UIButton *settingBtnAbout;
@property (nonatomic,strong) WiFiSettingViewController *wiFiSettingViewController;
@property (nonatomic,strong) HomeMenuVideoSettingViewController *homeMenuVideoSettingViewController;
@property (nonatomic,strong) HomeMenuVideoModeViewController * homeMenuVideoModeViewController;
@end
