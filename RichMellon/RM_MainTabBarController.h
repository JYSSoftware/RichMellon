//
//  RM_MainTabBarController.h
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RM_User.h"
#import "RM_MainBoardViewController.h"
#import "RM_MainPTBoardViewController.h"
#import "RM_SettingViewController.h"

@interface RM_MainTabBarController : UITabBarController

@property (nonatomic) RM_User * currentUser;
@property (nonatomic) NSMutableArray *tabCells;
@property (nonatomic, strong) RM_MainBoardViewController * mbvc;
@property (nonatomic, strong) RM_MainPTBoardViewController * mptvc;
@property (nonatomic, strong) RM_SettingViewController *svc;
@end
