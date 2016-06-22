//
//  NSObject+JSON.h
//
//  Created by 郭彬 on 16/6/22.
//  Copyright © 2016年 walker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (JSON)

+ (id)dataModelWithJSONString:(NSString *)jsonString;
+ (id)dataModelWithJSONObject:(id)jsonObject;

- (void)fillWithJSONObejct:(NSDictionary *)jsonObject;

- (NSString *)toJSONString;
- (NSDictionary *)toJSONObject;

@end
