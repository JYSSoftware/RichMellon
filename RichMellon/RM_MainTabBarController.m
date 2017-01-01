//
//  RM_MainTabBarController.m
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import "RM_MainTabBarController.h"




@interface RM_MainTabBarController () <UITabBarControllerDelegate>

@end

@implementation RM_MainTabBarController


- (void)viewDidAppear:(BOOL)animated{
  
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
  _mbvc = [RM_MainBoardViewController new];
  _mptvc = [RM_MainPTBoardViewController new];
  _svc = [RM_SettingViewController new];
  
  _tabCells = [[NSMutableArray alloc] initWithObjects: _mbvc, _mptvc, _svc , nil];
  [self.tabBarController setViewControllers:_tabCells animated:YES];
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
}

@end
