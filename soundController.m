//
//  soundController.m
//  FlameWars
//
//  Created by Stuart Grimshaw on 01/11/2008.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "soundController.h"


@implementation soundController

-(id)init  {
	if( self = [super init] ) {
		// Create a new instance of a player for this controller to use.
		theBill = [NSSound soundNamed:@"The Bill"];
		invincibleMario = [NSSound soundNamed:@"InvincibleMario"];
		youAreAPirate = [NSSound soundNamed:@"YouAreAPirate"];
		goldenEnvelope = [NSSound soundNamed:@"Golden envelope"];
		hooter = [NSSound soundNamed:@"Hooter"];
		itsAKnockout = [NSSound soundNamed:@"It's A Knockout"];
		onlyFools = [NSSound soundNamed:@"Only Fools And Horses"];
		largo = [NSSound soundNamed:@"largo"];
		laurelHardy = [NSSound soundNamed:@"laurel_and_hardy"];
		twighlightZone = [NSSound soundNamed:@"twighlight"];
		steptoe = [NSSound soundNamed:@"steptoe and son"];
		aTeam = [NSSound soundNamed:@"ATEAM"];
		airwolf = [NSSound soundNamed:@"Airwolf"];
		bennyHill = [NSSound soundNamed:@"bennyhill"];
		hopeAndGlory = [NSSound soundNamed:@"land_of_hope_and_glory"];
		bod = [NSSound soundNamed:@"BOD"];
		camberwickGreen = [NSSound soundNamed:@"camgreen"];
		differentStrokes = [NSSound soundNamed:@"diffrentstrokes-1"];
		flumps = [NSSound soundNamed:@"flumps"];
		funeralMarch = [NSSound soundNamed:@"FuneralMarch"];
		hulk = [NSSound soundNamed:@"Incredible Hulk"];
		mash = [NSSound soundNamed:@"mash"];
		eyeOfTheTiger = [NSSound soundNamed:@"eyeOfTheTiger"];
		shesALady = [NSSound soundNamed:@"shes_a_lady"];
		wind = [NSSound soundNamed:@"wind"];
		psycho = [NSSound soundNamed:@"psycho"];
		rimshot = [NSSound soundNamed:@"rimshot"];
		oneFootInTheGrave = [NSSound soundNamed:@"1foot"];
		gonnaFlyNow = [NSSound soundNamed:@"gonnaFlyNow"];
		sabotage = [NSSound soundNamed:@"sabotage"];
 }
	
	return self;
}
-(void)dealloc{
	[theBill release];
	[goldenEnvelope release];
	[hooter release];
	[itsAKnockout release];
	[onlyFools release];
	[largo release];
	[laurelHardy release];
	[twighlightZone release];
	[steptoe release];
	[aTeam release];
	[airwolf release];
	[bennyHill release];
	[hopeAndGlory release];
	[bod release];
	[camberwickGreen release];
	[differentStrokes release];
	[flumps release];
	[funeralMarch release];
	[hulk release];
	[mash release];
	[eyeOfTheTiger release];
	[sabotage release];
	[gonnaFlyNow release];
	[shesALady release];
	[wind release];
	[psycho release];
	[rimshot release];
	[oneFootInTheGrave release];
	[youAreAPirate release];
	[invincibleMario release];
	[super dealloc];
}

-(void)play:(NSSound *)soundEffect:(BOOL)stopIfPlaying {
	BOOL wasPlaying = FALSE;
	
	if([nowPlaying isPlaying])	{
		struct timespec ts;
		ts.tv_sec = 0;
		ts.tv_nsec = 25000000;
		
		// If the sound effect is the same, fade it out.
		if(soundEffect == nowPlaying)
		{
			for(int i = 1; i < 30; ++i)
			{
				[nowPlaying setVolume: (1.0 / i )];
				nanosleep(&ts, &ts);
			}			
		}
		
		[nowPlaying stop];
		[nowPlaying setVolume:1];
		wasPlaying = TRUE;
	}	
	
	if(soundEffect != nowPlaying)
	{
		[soundEffect play];
		nowPlaying = soundEffect;
	} else if(soundEffect == nowPlaying && ![nowPlaying isPlaying] && !wasPlaying) {
		[nowPlaying play];
	}

}

-(IBAction)theBill:(id)sender {
	[self play:theBill:TRUE];
}

-(IBAction)goldenEnvelope:(id)sender {
	[self play:goldenEnvelope:TRUE];
}

-(IBAction)hooter:(id)sender {
	[self play:hooter : TRUE];
}

-(IBAction)itsAKnockout:(id)sender {
	[self play : itsAKnockout	: TRUE];
}

-(IBAction)onlyFools:(id)sender {
	[self play:onlyFools:TRUE];
}

-(IBAction)largo:(id)sender {
	[self play:largo :TRUE];
}

-(IBAction)laurelHardy:(id)sender {
	[self play:laurelHardy :TRUE];
}

-(IBAction)twighlightZone:(id)sender {
	[self play:twighlightZone :TRUE];
}

-(IBAction)steptoe:(id)sender {
	[self play:steptoe :TRUE];
}

-(IBAction)aTeam:(id)sender {
	[self play:aTeam :TRUE];
}

-(IBAction)airwolf:(id)sender {
	[self play:airwolf :TRUE];
}

-(IBAction)bennyHill:(id)sender {
	[self play:bennyHill :TRUE];
}

-(IBAction)bod:(id)sender {
	[self play:bod :TRUE];
}

-(IBAction)camberwickGreen:(id)sender {
	[self play:camberwickGreen :TRUE];
}

-(IBAction)differentStrokes:(id)sender{
	[self play:differentStrokes :TRUE];
}

-(IBAction)flumps:(id)sender{
	[self play:flumps :TRUE];
}

-(IBAction)funeralMarch:(id)sender{
	[self play:funeralMarch :TRUE];
}

-(IBAction)hulk:(id)sender{
	[self play:hulk :TRUE];
}

-(IBAction)mash:(id)sender{
	[self play:mash :TRUE];
}

-(IBAction)hopeAndGlory:(id)sender{
	[self play:hopeAndGlory :TRUE];
}

-(IBAction)sabotage:(id)sender{
	[self play:sabotage :TRUE];
}

-(IBAction)eyeOfTheTiger:(id)sender{
	[self play:eyeOfTheTiger :TRUE];
}

-(IBAction)gonnaFlyNow:(id)sender{
	[self play:gonnaFlyNow :TRUE];
}

-(IBAction)shesALady:(id)sender{
	[self play:shesALady :TRUE];
}

-(IBAction)wind:(id)sender{
	[self play:wind :TRUE];
}

-(IBAction)psycho:(id)sender{
	[self play:psycho :TRUE];
}

-(IBAction)rimshot:(id)sender{
	[self play:rimshot :TRUE];
}

-(IBAction)invincibleMario:(id)sender{
	[self play:invincibleMario :TRUE];
}

-(IBAction)youAreAPirate:(id)sender{
	[self play:youAreAPirate :TRUE];
}

-(IBAction)oneFootInTheGrave:(id)sender{
	[self play:oneFootInTheGrave :TRUE];
}




@end
