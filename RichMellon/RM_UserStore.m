//
//  RM_UserStore.m
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import "RM_UserStore.h"

@implementation RM_UserStore

+ (RM_UserStore *)sharedInstance{
  
  static RM_UserStore *sharedInstance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [[self alloc] init];
  });
  
  return sharedInstance;
}

- (BOOL) completeUserInfo : (FIRUser*) user{
  
  
  return YES;
}

@end
