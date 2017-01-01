//
//  RM_LogInViewController.m
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import "RM_LogInViewController.h"
#import "RM_Constants.h"
#import "RM_UserStore.h"
#import "RM_DBConnectionHandler.h"
#import "RM_SignUpViewController.h"
#import "RM_MainTabBarController.h"

@import Firebase;

@interface RM_LogInViewController (){
  FIRDatabaseReference *ref;
  RM_SignUpViewController *svc;
  RM_MainTabBarController *mvc;
  NSString *uid;
}

@end

@implementation RM_LogInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  RM_DBConnectionHandler *handler = [RM_DBConnectionHandler sharedInstance];
  ref = handler.ref;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btn_SignUp:(id)sender {
  
  if (![self isValidEmail:_txt_UserID.text] || ![self isValidPWD:_txt_UserPWD.text]) {
    [self fireAlertWithTitle: kAlertTitle_Invalid body: kAlertBody_Invalid_ID_PWD];
  }else{
  
    [[FIRAuth auth] createUserWithEmail:_txt_UserID.text password:_txt_UserPWD.text completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
      if (error) {
        NSLog(@"Error Occured in Signing Up %@", [error localizedDescription]);
      }else{
        NSLog(@"Successed %@", user.email);
        [[[ref child:@"user"] child:user.uid] setValue:@{@"uid": user.uid}];
        svc = [RM_SignUpViewController new];
        [self.navigationController pushViewController:svc animated:YES];
      }
    }];
  }
}
- (IBAction)btn_SignIn:(id)sender {
  
  [[FIRAuth auth] signInWithEmail:_txt_UserID.text password:_txt_UserPWD.text completion:^(FIRUser * _Nullable user, NSError * _Nullable error) {
    if (error) {
      NSLog(@"Error Occured in Signning In %@", [error localizedDescription]);
    }else{
      NSLog(@"Successed %@", user.uid);
      [RM_UserStore sharedInstance].currentUser = user;
      [RM_UserStore sharedInstance].userData.uid = user.uid;
      mvc = [RM_MainTabBarController new];
      [self.navigationController pushViewController:mvc animated:YES];
    }
  }];
}

- (BOOL) isValidEmail:(NSString*) email{
  
  BOOL stricterFilter = NO;
  NSString *stricterFilterString = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
  NSString *laxString = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
  NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
  NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
  return [emailTest evaluateWithObject:email];
  
}

- (BOOL) isValidPWD:(NSString*) pwd{
  return pwd.length >= 6 ? YES : NO;
}

- (void) fireAlertWithTitle: (NSString *) title body : (NSString*) body {
  
  //fire Alert
  
  NSLog(@"Title : %@ ,\n Body : %@", title, body);
  
}

@end
