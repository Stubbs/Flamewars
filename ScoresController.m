//
//  ScoresController.m
//  FlameWars
//
//  Created by Stuart Grimshaw on 13/10/2008.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "ScoresController.h"

@implementation ScoresController

-(id)init  {
	if( self = [super init] ) {
		// Create a new instance of a player for this controller to use.
		player = [Player new];
	}

	return self;
}

// Dave: Free all memory retained by this object
- (void)dealloc {
	[player release]; // Dave: Because you did a [new] in init
	[super dealloc];  // Dave: ALWAYS call super dealloc
}

-(IBAction)add1:(id)sender {
	[player addPoints:1];
	[score setStringValue:[NSString stringWithFormat:@"%i", player.score]];
}

-(IBAction)add2:(id)sender {
	[player addPoints:2];
	[score setStringValue:[NSString stringWithFormat:@"%i", player.score]];
}

-(IBAction)add3:(id)sender {
	[player addPoints:3];
	[score setStringValue:[NSString stringWithFormat:@"%i", player.score]];
}

-(IBAction)minus1:(id)sender {
	[player minusPoints:1];
	[score setStringValue:[NSString stringWithFormat:@"%i", player.score]];
}

@end
