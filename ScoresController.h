//
//  ScoresController.h
//  FlameWars
//
//  Created by Stuart Grimshaw on 13/10/2008.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Player.h"


@interface ScoresController : NSObject {
	IBOutlet NSTextField *score;
	Player *player;
}

- (id)init;

- (IBAction)add1:(id)sender;
- (IBAction)add2:(id)sender;
- (IBAction)add3:(id)sender;
- (IBAction)minus1:(id)sender;

@end
