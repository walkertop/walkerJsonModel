//
//  DataModelArray.m
//
//  Created by 郭彬 on 16/6/22.
//  Copyright © 2016年 walker. All rights reserved.
//

#import "DataModelArray.h"
#import "NSObject+JSON.h"

@implementation DataModelArray

@synthesize itemType    = m_itemType;

+ (id)arrayWithItemType:(Class)itemType {
    __autoreleasing DataModelArray *array = [[DataModelArray alloc] init];
    
    array.itemType = itemType;
    
    return array;
}

- (id)init
{
    self = [super init];
    if (self) {
        m_dataStore = [[NSMutableArray alloc] init];
    }
    return self;
}

//- (void)dealloc
//{
//    [m_dataStore release];
//
//    [super dealloc];
//}

- (void)fillWithJSONObejct:(NSArray *)jsonObject {
    Class itemType = self.itemType;
    
    for (id jsonItem in jsonObject) {
        if ([jsonItem isKindOfClass:[NSDictionary class]]) {
            NSObject *item = [[itemType alloc] init];
            
            [item fillWithJSONObejct:jsonItem];
            
            [self addObject:item];
        }
        else {
            [self addObject:jsonItem];
        }
    }
}

#pragma mark - NSArray methods

- (NSUInteger)count {
    return [m_dataStore count];
}

- (id)objectAtIndex:(NSUInteger)index {
    return [m_dataStore objectAtIndex:index];
}

#pragma mark - NSMutableArray methods

- (void)insertObject:(id)anObject atIndex:(NSUInteger)index {
    [m_dataStore insertObject:anObject atIndex:index];
}

- (void)removeObjectAtIndex:(NSUInteger)index {
    [m_dataStore removeObjectAtIndex:index];
}

- (void)addObject:(id)anObject {
    [m_dataStore addObject:anObject];
}

- (void)removeLastObject {
    [m_dataStore removeLastObject];
}

- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    [m_dataStore replaceObjectAtIndex:index withObject:anObject];
}

@end
