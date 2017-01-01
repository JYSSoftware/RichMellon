//
//  RM_Post.h
//  RichMellon
//
//  Created by YongSuk Jin on 12/30/16.
//  Copyright © 2016 JYSSoftware. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RM_Post : NSObject

@property (nonatomic) NSString * post_id;
@property (nonatomic) NSString * author;
@property (nonatomic) NSString * title;
@property (nonatomic) NSString * body;
@property (nonatomic) NSString * created_time;
@property (nonatomic) NSString * source;

@end
