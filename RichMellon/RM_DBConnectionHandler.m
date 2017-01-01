//
//  RM_DBConnectionHandler.m
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import "RM_DBConnectionHandler.h"

@implementation RM_DBConnectionHandler

+ (RM_DBConnectionHandler *) sharedInstance{
  
  static RM_DBConnectionHandler * sharedInstance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [[RM_DBConnectionHandler alloc] init];
    sharedInstance.ref = [[FIRDatabase database] reference];
  });
  return sharedInstance;
}

@end
