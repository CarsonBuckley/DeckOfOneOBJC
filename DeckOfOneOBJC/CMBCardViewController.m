//
//  CardViewController.m
//  DeckOfOneOBJC
//
//  Created by Carson Buckley on 3/26/19.
//  Copyright © 2019 Launch. All rights reserved.
//

#import "CMBCardViewController.h"
#import "CMBCardController.h"
#import "CMBCard.h"

@interface CMBCardViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *cardImage;
@property (weak, nonatomic) IBOutlet UILabel *cardLabel;


@end

@implementation CMBCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)updateViews
{
    [[CMBCardController sharedController] drawNewCard:1 completion:^(NSArray<CMBCard *> *  cards, NSError *error) {
        if (error) {
            NSLog(@"Error getting photo references for %@ on %@:", cards, error);
            return;
        }
        CMBCard *card = [cards objectAtIndex:0];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.cardLabel.text = card.suit;
        });
        [[CMBCardController sharedController] fetchCardImage:card completion:^(UIImage *image, NSError *error) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                self.cardImage.image = image;
            });
        }];
        
        
    }];
}


- (IBAction)newCardButtonTapped:(id)sender {
    [self updateViews];
}

@end
