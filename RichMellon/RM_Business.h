//
//  RM_Business.h
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RM_Address.h"
#import "RM_User.h"

@interface RM_Business : RM_User

@property (nonatomic) RM_Address * business_Address;
@property (nonatomic) NSString * business_Id;

@end
