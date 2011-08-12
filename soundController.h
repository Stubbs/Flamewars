//
//  soundController.h
//  FlameWars
//
//  Created by Stuart Grimshaw on 01/11/2008.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface soundController : NSObject {
	NSSound *theBill;
	NSSound *goldenEnvelope;
	NSSound *hooter;
	NSSound *itsAKnockout;
	NSSound *onlyFools;
	NSSound *largo;
	NSSound *laurelHardy;
	NSSound *twighlightZone;
	NSSound *steptoe;
	NSSound *aTeam;
	NSSound *airwolf;
	NSSound *bennyHill;
	NSSound *hopeAndGlory;
	NSSound *bod;
	NSSound *camberwickGreen;
	NSSound *differentStrokes;
	NSSound *flumps;
	NSSound *funeralMarch;
	NSSound *hulk;
	NSSound *mash;
	NSSound *eyeOfTheTiger;
	NSSound *shesALady;
	NSSound *wind;
	NSSound *psycho;
	NSSound *rimshot;
	NSSound *oneFootInTheGrave;
	NSSound *youAreAPirate;
	NSSound *invincibleMario;
	
	NSSound *gonnaFlyNow;
	NSSound *sabotage;
	
	NSSound *nowPlaying;
}

-(void)play:(NSSound *)soundEffect:(BOOL)stopIfPlaying;
-(IBAction)theBill:(id)sender;
-(IBAction)goldenEnvelope:(id)sender;
-(IBAction)hooter:(id)sender;
-(IBAction)itsAKnockout:(id)sender;
-(IBAction)onlyFools:(id)sender;
-(IBAction)largo:(id)sender;
-(IBAction)laurelHardy:(id)sender;
-(IBAction)twighlightZone:(id)sender;
-(IBAction)steptoe:(id)sender;
-(IBAction)aTeam:(id)sender;
-(IBAction)airwolf:(id)sender;
-(IBAction)bennyHill:(id)sender;
-(IBAction)hopeAndGlory:(id)sender;
-(IBAction)bod:(id)sender;
-(IBAction)camberwickGreen:(id)sender;
-(IBAction)differentStrokes:(id)sender;
-(IBAction)flumps:(id)sender;
-(IBAction)funeralMarch:(id)sender;
-(IBAction)hulk:(id)sender;
-(IBAction)mash:(id)sender;
-(IBAction)eyeOfTheTiger:(id)sender;
-(IBAction)shesALady:(id)sender;
-(IBAction)gonnaFlyNow:(id)sender;
-(IBAction)sabotage:(id)sender;
-(IBAction)wind:(id)sender;
-(IBAction)psycho:(id)sender;
-(IBAction)rimshot:(id)sender;
-(IBAction)oneFootInTheGrave:(id)sender;
-(IBAction)youAreAPirate:(id)sender;
-(IBAction)invincibleMario:(id)sender;

@end
