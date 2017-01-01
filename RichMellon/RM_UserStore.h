//
//  RM_UserStore.h
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RM_User.h"
@import Firebase;

@interface RM_UserStore : NSObject

+ (RM_UserStore *) sharedInstance;
- (BOOL) completeUserInfo : (FIRUser*) user;

@property (nonatomic) BOOL signedIn;
@property (atomic) FIRUser *currentUser;
@property (nonatomic) RM_User * userData;


@end
