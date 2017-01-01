//
//  RM_LogInViewController.h
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RM_LogInViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgView_Logo;
@property (weak, nonatomic) IBOutlet UITextField *txt_UserID;
@property (weak, nonatomic) IBOutlet UITextField *txt_UserPWD;
@property (weak, nonatomic) IBOutlet UIButton *btn_SignUp;
@property (weak, nonatomic) IBOutlet UIButton *btn_SignIn;

@end
