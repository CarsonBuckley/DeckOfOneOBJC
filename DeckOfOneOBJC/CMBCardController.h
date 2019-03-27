//
//  CardController.h
//  DeckOfOneOBJC
//
//  Created by Carson Buckley on 3/26/19.
//  Copyright © 2019 Launch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CMBCard.h"

NS_ASSUME_NONNULL_BEGIN

@class CMBCard;

@interface CMBCardController : NSObject

+(instancetype)sharedController;

-(void)drawNewCard:(NSInteger)numberOfCards completion:(void(^) (NSArray<CMBCard *> *cards, NSError *error))completion;
-(void)fetchCardImage:(CMBCard *)card completion:(void(^) (UIImage *image, NSError *error))completion;

@end

NS_ASSUME_NONNULL_END
