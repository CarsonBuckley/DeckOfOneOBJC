//
//  Card.h
//  DeckOfOneOBJC
//
//  Created by Carson Buckley on 3/26/19.
//  Copyright © 2019 Launch. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMBCard : NSObject

@property (nonatomic, copy, readonly) NSString *suit;
@property (nonatomic, copy, readonly) NSString *image;

-(instancetype)initWithSuit:(NSString *)suit image:(NSString *)image;

-(instancetype)initWithDictionary:(NSDictionary<NSString *, id> *)dictionary;

@end

NS_ASSUME_NONNULL_END
