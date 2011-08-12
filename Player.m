//
//  Player.m
//  FlameWars
//
//  Created by Stuart Grimshaw on 26/10/2008.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "Player.h"


@implementation Player
@synthesize playerName, score;

- (void)addPoints:(int)points {
	score += points;
}

- (void)minusPoints:(int)points {
	score -= points;
}

@end
