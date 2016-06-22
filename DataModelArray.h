//
//  DataModelArray.h
//
//  Created by 郭彬 on 16/6/22.
//  Copyright © 2016年 walker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModelArray : NSMutableArray
{
    NSMutableArray  *m_dataStore;
    Class           m_itemType;
}

@property(nonatomic,assign) Class   itemType;

+ (id)arrayWithItemType:(Class)itemType;

- (void)fillWithJSONObejct:(NSArray *)jsonObject;

@end
