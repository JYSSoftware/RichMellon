//
//  RM_JobStores.m
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import "RM_JobStores.h"

@implementation RM_JobStores

+ (RM_JobStores *)sharedInstance{
  
  static RM_JobStores* sharedInstance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [RM_JobStores new];
    
  });
  return sharedInstance;
}

@end
