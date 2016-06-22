//
//  NSArray+JSON.h
//
//  Created by 郭彬 on 16/6/22.
//  Copyright © 2016年 walker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (JSON)

- (NSString *)_toJSONString;
- (NSArray *)_toJSONObject;

@end
