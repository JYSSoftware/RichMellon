//
//  RM_Address.h
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RM_Address : NSObject

@property (nonatomic) NSString * addr_id;
@property (nonatomic) NSString * street_addr;
@property (nonatomic) NSString * city;
@property (nonatomic) NSString * state;
@property (nonatomic) NSString * apt_number;
@property (nonatomic) NSString * suit_number;
@property (nonatomic) NSInteger * zip_code;

@end
