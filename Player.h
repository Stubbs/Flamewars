//
//  Player.h
//  FlameWars
//
//  Created by Stuart Grimshaw on 26/10/2008.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Player : NSObject {
@private
	int score;
	NSString *playerName;
}

@property(readonly, assign) int score;  // Dave: Added assign keyword to make it explicit that this is a value type (not a pointer)
@property(nonatomic, retain) NSString *playerName; // Dave: replaced readwrite with nonatomic, retain. Nonatomic makes the getter return the actual value without an additional retain and retain means that the value is retained when the property is set so you wont get crashes from the object being released elsewhere

- (void)addPoints:(int)points;
- (void)minusPoints:(int)points;

@end
