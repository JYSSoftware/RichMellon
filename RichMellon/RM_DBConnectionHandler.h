//
//  RM_DBConnectionHandler.h
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RM_DBController.h"
#import "RM_User.h"
#import "RM_Post.h"
#import "RM_Business.h"
#import "RM_Address.h"
@import Firebase;
@import FirebaseDatabase;

@interface RM_DBConnectionHandler : NSObject

@property (strong, nonatomic) FIRDatabase *db;
@property (strong, nonatomic) FIRDatabaseReference *ref;

+ (RM_DBConnectionHandler *) sharedInstance;

@end
