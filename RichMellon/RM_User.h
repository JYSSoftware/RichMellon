//
//  RM_User.h
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

typedef enum {
  kUserTypeApplicant,
  kUserTypeBusinessOwner,
  kUserTypeRecruiter
} kUserType;

#import <Foundation/Foundation.h>
#import "RM_Contact.h"
#import "RM_Address.h"

@interface RM_User : NSObject

@property (nonatomic) NSString * uid;
@property (nonatomic) NSString * first_Name;
@property (nonatomic) NSString * last_Name;
@property (nonatomic) NSString * phone_Number;
@property (nonatomic) RM_Address * user_Address;
@property (nonatomic) RM_Contact *contact;
@property (assign) int age;
@property (nonatomic) NSMutableArray *posts;
@property (nonatomic) kUserType * type;

@end
