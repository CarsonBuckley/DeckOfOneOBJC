//
//  Card.m
//  DeckOfOneOBJC
//
//  Created by Carson Buckley on 3/26/19.
//  Copyright © 2019 Launch. All rights reserved.
//

#import "CMBCard.h"

@implementation CMBCard

-(instancetype)initWithSuit:(NSString *)suit image:(NSString *)image
{
    if (self = [super init]) {
        _suit = [suit copy];
        _image = [image copy];
    }
    return self;
}

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *suit = dictionary[[CMBCard suitKey]];
    NSString *image = dictionary[[CMBCard imageKey]];
    
    return [self initWithSuit:suit image:image];
}

+ (NSString *)suitKey
{
    return @"suit";
}

+(NSString *)imageKey
{
    return @"image";
}

@end
